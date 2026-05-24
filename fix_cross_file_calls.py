#!/usr/bin/env python3
"""
修复跨文件调用关系识别的补丁
"""
import sys
sys.path.insert(0, '/workspace')

# 读取原文件
with open('/workspace/arkts_parser.py', 'r') as f:
    content = f.read()

# 修改1：修改_parse_file_content，添加all_methods参数
old_parse = """    def _parse_file_content(self, content: str, file_path: str) -> Dict[str, Any]:
        # 如果内容为空或只有空白字符，返回空结果
        if not content or not content.strip():
            return {
                'file_path': file_path,
                'hash': calculate_file_hash(file_path),
                'classes': [],
                'methods': [],
                'calls': [],
                'components': []
            }
        
        # 预处理：处理超长行，避免性能灾难
        content = self._preprocess_content(content)

        classes = self._extract_classes(content)
        methods = self._extract_methods(content, classes)
        calls = self._extract_calls(content, methods, file_path)
        components = self._extract_components(content, classes)

        return {
            'file_path': file_path,
            'hash': calculate_file_hash(file_path),
            'classes': classes,
            'methods': methods,
            'calls': calls,
            'components': components
        }"""

new_parse = """    def _parse_file_content(self, content: str, file_path: str, all_methods: List[Dict] = None) -> Dict[str, Any]:
        # 如果内容为空或只有空白字符，返回空结果
        if not content or not content.strip():
            return {
                'file_path': file_path,
                'hash': calculate_file_hash(file_path),
                'classes': [],
                'methods': [],
                'calls': [],
                'components': []
            }
        
        # 预处理：处理超长行，避免性能灾难
        content = self._preprocess_content(content)

        classes = self._extract_classes(content)
        methods = self._extract_methods(content, classes)
        calls = self._extract_calls(content, methods, file_path, all_methods)
        components = self._extract_components(content, classes)

        return {
            'file_path': file_path,
            'hash': calculate_file_hash(file_path),
            'classes': classes,
            'methods': methods,
            'calls': calls,
            'components': components
        }"""

content = content.replace(old_parse, new_parse)

# 修改2：修改_extract_calls签名和逻辑
old_extract_calls = """    def _extract_calls(self, content: str, methods: List[Dict], file_path: str) -> List[Dict]:
        calls = []
        method_names = [m['name'] for m in methods]
        
        if not method_names:
            return []
        
        seen_pairs = set()
        for caller in methods:
            caller_name = caller['name']
            caller_start = -1
            
            pattern = re.compile(r'\b' + re.escape(caller_name) + r'\s*\(')
            match = pattern.search(content)
            if match:
                caller_start = match.start()
            
            if caller_start == -1:
                continue
            
            stack = []
            caller_end = len(content)
            nesting_depth = 0
            i = content.find('{', caller_start)
            if i == -1:
                continue
            
            stack.append('{')
            nesting_depth = 1
            for j in range(i + 1, min(len(content), i + 10000)):  # 限制搜索范围
                if content[j] == '{':
                    stack.append('{')
                    nesting_depth += 1
                    if nesting_depth > self.MAX_NESTING_DEPTH:
                        break
                elif content[j] == '}':
                    stack.pop()
                    if not stack:
                        caller_end = j + 1
                        break
            
            method_content = content[caller_start:caller_end]
            call_matches = self.call_pattern.finditer(method_content)
            
            for call_match in call_matches:
                callee_name = call_match.group(1)
                if (callee_name in method_names 
                    and callee_name != caller_name 
                    and callee_name not in self.keywords
                    and len(callee_name) <= self.MAX_IDENTIFIER_LENGTH
                    and (callee_name, caller_name) not in seen_pairs):
                    
                    seen_pairs.add((callee_name, caller_name))
                    calls.append({
                        'caller': caller_name,
                        'callee': callee_name,
                        'file_path': file_path
                    })
        
        return calls"""

new_extract_calls = """    def _extract_calls(self, content: str, methods: List[Dict], file_path: str, all_methods: List[Dict] = None) -> List[Dict]:
        calls = []
        method_names = [m['name'] for m in methods]
        
        # 如果提供了所有方法列表，使用它；否则只使用当前文件的方法
        if all_methods is not None:
            known_methods = set(m['name'] for m in all_methods)
        else:
            known_methods = set(method_names)
        
        if not method_names:
            return []
        
        seen_pairs = set()
        for caller in methods:
            caller_name = caller['name']
            caller_start = -1
            
            pattern = re.compile(r'\b' + re.escape(caller_name) + r'\s*\(')
            match = pattern.search(content)
            if match:
                caller_start = match.start()
            
            if caller_start == -1:
                continue
            
            stack = []
            caller_end = len(content)
            nesting_depth = 0
            i = content.find('{', caller_start)
            if i == -1:
                continue
            
            stack.append('{')
            nesting_depth = 1
            for j in range(i + 1, min(len(content), i + 10000)):  # 限制搜索范围
                if content[j] == '{':
                    stack.append('{')
                    nesting_depth += 1
                    if nesting_depth > self.MAX_NESTING_DEPTH:
                        break
                elif content[j] == '}':
                    stack.pop()
                    if not stack:
                        caller_end = j + 1
                        break
            
            method_content = content[caller_start:caller_end]
            call_matches = self.call_pattern.finditer(method_content)
            
            for call_match in call_matches:
                callee_name = call_match.group(1)
                if (callee_name in known_methods  # 使用known_methods而不是method_names
                    and callee_name != caller_name 
                    and callee_name not in self.keywords
                    and len(callee_name) <= self.MAX_IDENTIFIER_LENGTH
                    and (callee_name, caller_name) not in seen_pairs):
                    
                    seen_pairs.add((callee_name, caller_name))
                    calls.append({
                        'caller': caller_name,
                        'callee': callee_name,
                        'file_path': file_path
                    })
        
        return calls"""

content = content.replace(old_extract_calls, new_extract_calls)

# 保存修改后的文件
with open('/workspace/arkts_parser.py', 'w') as f:
    f.write(content)

print("✅ 已修复：添加跨文件调用关系识别支持")
print("   - _parse_file_content 新增 all_methods 参数")
print("   - _extract_calls 新增 all_methods 参数")
print("   - 调用关系识别现在支持跨文件")
