import sqlite3
import os
from typing import List, Dict, Tuple, Optional
from contextlib import contextmanager

BATCH_SIZE = 100

class CodeGraphDatabase:
    def __init__(self, db_path: str = "code.db"):
        self.db_path = db_path
        self.conn: Optional[sqlite3.Connection] = None
        self._connect()
        self._create_tables()

    @contextmanager
    def _transaction(self):
        try:
            yield
            self.conn.commit()
        except Exception as e:
            self.conn.rollback()
            raise e

    def _connect(self):
        self.conn = sqlite3.connect(self.db_path, check_same_thread=False)
        self.conn.execute("PRAGMA journal_mode = WAL")
        self.conn.execute("PRAGMA synchronous = NORMAL")
        self.conn.execute("PRAGMA cache_size = -64000")
        self.conn.execute("PRAGMA temp_store = MEMORY")

    def _create_tables(self):
        with self._transaction():
            self.conn.execute('''
                CREATE TABLE IF NOT EXISTS files (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    path TEXT UNIQUE NOT NULL,
                    hash TEXT NOT NULL
                )
            ''')
            self.conn.execute('''
                CREATE TABLE IF NOT EXISTS classes (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    name TEXT NOT NULL,
                    file_id INTEGER NOT NULL,
                    FOREIGN KEY (file_id) REFERENCES files(id)
                )
            ''')
            self.conn.execute('''
                CREATE TABLE IF NOT EXISTS methods (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    name TEXT NOT NULL,
                    class_id INTEGER,
                    file_id INTEGER NOT NULL,
                    FOREIGN KEY (class_id) REFERENCES classes(id),
                    FOREIGN KEY (file_id) REFERENCES files(id)
                )
            ''')
            self.conn.execute('''
                CREATE TABLE IF NOT EXISTS calls (
                    caller_id INTEGER NOT NULL,
                    callee_id INTEGER NOT NULL,
                    PRIMARY KEY (caller_id, callee_id),
                    FOREIGN KEY (caller_id) REFERENCES methods(id),
                    FOREIGN KEY (callee_id) REFERENCES methods(id)
                )
            ''')
            self.conn.execute('''
                CREATE TABLE IF NOT EXISTS components (
                    parent_id INTEGER NOT NULL,
                    child_id INTEGER NOT NULL,
                    PRIMARY KEY (parent_id, child_id),
                    FOREIGN KEY (parent_id) REFERENCES classes(id),
                    FOREIGN KEY (child_id) REFERENCES classes(id)
                )
            ''')
            self.conn.execute('CREATE INDEX IF NOT EXISTS idx_files_path ON files(path)')
            self.conn.execute('CREATE INDEX IF NOT EXISTS idx_classes_file ON classes(file_id)')
            self.conn.execute('CREATE INDEX IF NOT EXISTS idx_methods_file ON methods(file_id)')
            self.conn.execute('CREATE INDEX IF NOT EXISTS idx_methods_class ON methods(class_id)')

    def get_file_hash(self, file_path: str) -> Optional[str]:
        cursor = self.conn.execute('SELECT hash FROM files WHERE path = ?', (file_path,))
        result = cursor.fetchone()
        return result[0] if result else None

    def get_all_file_hashes(self) -> Dict[str, str]:
        cursor = self.conn.execute('SELECT path, hash FROM files')
        return {row[0]: row[1] for row in cursor.fetchall()}

    def delete_file_data(self, file_path: str):
        cursor = self.conn.execute('SELECT id FROM files WHERE path = ?', (file_path,))
        file_row = cursor.fetchone()
        if not file_row:
            return
        file_id = file_row[0]
        
        cursor.execute('SELECT id FROM methods WHERE file_id = ?', (file_id,))
        method_ids = [row[0] for row in cursor.fetchall()]
        if method_ids:
            placeholders = ','.join(['?'] * len(method_ids))
            cursor.execute(f'DELETE FROM calls WHERE caller_id IN ({placeholders})', method_ids)
            cursor.execute(f'DELETE FROM calls WHERE callee_id IN ({placeholders})', method_ids)
        
        cursor.execute('SELECT id FROM classes WHERE file_id = ?', (file_id,))
        class_ids = [row[0] for row in cursor.fetchall()]
        if class_ids:
            placeholders = ','.join(['?'] * len(class_ids))
            cursor.execute(f'DELETE FROM components WHERE parent_id IN ({placeholders})', class_ids)
            cursor.execute(f'DELETE FROM components WHERE child_id IN ({placeholders})', class_ids)
        
        cursor.execute('DELETE FROM methods WHERE file_id = ?', (file_id,))
        cursor.execute('DELETE FROM classes WHERE file_id = ?', (file_id,))
        cursor.execute('DELETE FROM files WHERE id = ?', (file_id,))

    def batch_insert(self, parsed_data_list: List[Dict]):
        for data in parsed_data_list:
            self._insert_single_file(data)

    def _insert_single_file(self, data: Dict):
        file_path = data['file_path']
        file_hash = data['hash']
        
        self.delete_file_data(file_path)
        
        cursor = self.conn.execute('INSERT INTO files (path, hash) VALUES (?, ?)', (file_path, file_hash))
        file_id = cursor.lastrowid
        
        class_id_map = {}
        for cls in data.get('classes', []):
            cursor = self.conn.execute('INSERT INTO classes (name, file_id) VALUES (?, ?)', (cls['name'], file_id))
            class_id_map[cls['name']] = cursor.lastrowid
        
        method_id_map = {}
        for method in data.get('methods', []):
            class_id = class_id_map.get(method['class_name']) if method.get('class_name') else None
            cursor = self.conn.execute(
                'INSERT INTO methods (name, class_id, file_id) VALUES (?, ?, ?)',
                (method['name'], class_id, file_id)
            )
            method_id_map[method['name']] = cursor.lastrowid
        
        for call in data.get('calls', []):
            caller_id = method_id_map.get(call['caller'])
            callee_id = method_id_map.get(call['callee'])
            if caller_id and callee_id:
                try:
                    self.conn.execute('INSERT INTO calls (caller_id, callee_id) VALUES (?, ?)', (caller_id, callee_id))
                except sqlite3.IntegrityError:
                    pass
        
        for component in data.get('components', []):
            parent_id = class_id_map.get(component['parent'])
            child_id = class_id_map.get(component['child'])
            if parent_id and child_id:
                try:
                    self.conn.execute('INSERT INTO components (parent_id, child_id) VALUES (?, ?)', (parent_id, child_id))
                except sqlite3.IntegrityError:
                    pass

    def get_graph_summary(self) -> Dict:
        cursor = self.conn.execute('SELECT COUNT(*) FROM files')
        file_count = cursor.fetchone()[0]
        
        cursor = self.conn.execute('SELECT COUNT(*) FROM classes')
        class_count = cursor.fetchone()[0]
        
        cursor = self.conn.execute('SELECT COUNT(*) FROM methods')
        method_count = cursor.fetchone()[0]
        
        cursor = self.conn.execute('SELECT COUNT(*) FROM calls')
        call_count = cursor.fetchone()[0]
        
        return {
            'files': file_count,
            'classes': class_count,
            'methods': method_count,
            'calls': call_count
        }

    def get_all_data_for_llm(self, max_tokens: int = 25000) -> str:
        result = []
        current_length = 0
        
        # 优先添加关键摘要信息
        summary = self.get_graph_summary()
        summary_text = f"""Project Summary:
  Files: {summary['files']}
  Classes: {summary['classes']}
  Methods: {summary['methods']}
  Calls: {summary['calls']}
"""
        result.append(summary_text)
        current_length += len(summary_text)
        
        # 添加文件信息，但限制数量
        cursor = self.conn.execute('SELECT id, path FROM files LIMIT 100')
        files = cursor.fetchall()
        files_text = "\nFiles (top 100):"
        result.append(files_text)
        current_length += len(files_text)
        for file_id, path in files:
            file_line = f"\n  - {path}"
            if current_length + len(file_line) > max_tokens:
                result.append(f"\n  ... and {len(files) - len(result[-1].splitlines())} more files")
                break
            result.append(file_line)
            current_length += len(file_line)
        
        # 添加类信息，但限制数量
        cursor = self.conn.execute('SELECT id, name, file_id FROM classes LIMIT 100')
        classes = cursor.fetchall()
        classes_text = "\nClasses (top 100):"
        result.append(classes_text)
        current_length += len(classes_text)
        for class_id, name, file_id in classes:
            class_line = f"\n  - {name}"
            if current_length + len(class_line) > max_tokens:
                result.append(f"\n  ... and {len(classes) - len(result[-1].splitlines())} more classes")
                break
            result.append(class_line)
            current_length += len(class_line)
        
        # 添加方法信息，但限制数量
        cursor = self.conn.execute('SELECT id, name, class_id FROM methods LIMIT 200')
        methods = cursor.fetchall()
        methods_text = "\nMethods (top 200):"
        result.append(methods_text)
        current_length += len(methods_text)
        for method_id, name, class_id in methods:
            method_line = f"\n  - {name}"
            if current_length + len(method_line) > max_tokens:
                result.append(f"\n  ... and {len(methods) - len(result[-1].splitlines())} more methods")
                break
            result.append(method_line)
            current_length += len(method_line)
        
        # 添加调用关系，但限制数量
        cursor = self.conn.execute('SELECT caller_id, callee_id FROM calls LIMIT 100')
        calls = cursor.fetchall()
        calls_text = "\nCalls (top 100):"
        result.append(calls_text)
        current_length += len(calls_text)
        for caller, callee in calls:
            call_line = f"\n  - {caller} -> {callee}"
            if current_length + len(call_line) > max_tokens:
                result.append(f"\n  ... and {len(calls) - len(result[-1].splitlines())} more calls")
                break
            result.append(call_line)
            current_length += len(call_line)
        
        # 确保总长度不超过限制
        full_result = "".join(result)
        if len(full_result) > max_tokens:
            full_result = full_result[:max_tokens] + "\n\n[Truncated - data too large]"
        
        return full_result

    def optimize(self):
        # VACUUM 和 ANALYZE 不能在事务内执行，先提交任何挂起的事务
        try:
            self.conn.commit()
        except:
            pass
        self.conn.execute('VACUUM')
        self.conn.execute('ANALYZE')

    def close(self):
        if self.conn:
            try:
                self.conn.commit()
            except:
                pass
            self.conn.close()
            self.conn = None
