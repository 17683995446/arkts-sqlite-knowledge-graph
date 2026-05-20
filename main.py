import os
import sys
import time
from database import CodeGraphDatabase
from file_scanner import get_changed_files, calculate_file_hash
from parallel_processor import process_files_in_parallel

def build_code_graph(project_path: str, db_path: str = "code.db"):
    print(f"开始构建代码知识图谱...")
    print(f"项目路径: {project_path}")
    print(f"数据库路径: {db_path}")
    
    start_time = time.time()
    
    db = CodeGraphDatabase(db_path)
    
    print("扫描项目文件并检测变更...")
    old_hashes = db.get_all_file_hashes()
    changed_files, _ = get_changed_files(project_path, old_hashes)
    
    if not changed_files:
        print("没有需要更新的文件！")
        db.close()
        return
    
    print(f"发现 {len(changed_files)} 个变更文件需要处理")
    
    processed = process_files_in_parallel(changed_files, db)
    
    print("优化数据库...")
    db.optimize()
    
    summary = db.get_graph_summary()
    end_time = time.time()
    
    print("\n" + "="*50)
    print(f"构建完成！共处理 {processed} 个文件")
    print(f"耗时: {end_time - start_time:.2f} 秒")
    print(f"文件数: {summary['files']}")
    print(f"类数: {summary['classes']}")
    print(f"方法数: {summary['methods']}")
    print(f"调用关系数: {summary['calls']}")
    print("="*50 + "\n")
    
    db.close()

def interactive_query(db_path: str = "code.db"):
    from llm_query import CodeQueryEngine
    print("启动交互式查询模式...")
    print("输入 'quit' 或 'exit' 退出\n")
    
    engine = CodeQueryEngine(db_path)
    
    try:
        while True:
            question = input("请输入你的问题: ").strip()
            
            if question.lower() in ['quit', 'exit']:
                break
            
            if not question:
                continue
            
            print("\n正在思考...")
            answer = engine.ask(question)
            print("\n回答:")
            print(answer)
            print("\n" + "-"*50 + "\n")
    finally:
        engine.close()

def main():
    if len(sys.argv) < 2:
        print("用法:")
        print("  构建图谱: python main.py build <项目路径> [数据库路径]")
        print("  查询模式: python main.py query [数据库路径]")
        print("\n示例:")
        print("  python main.py build /path/to/your/project")
        print("  python main.py query")
        return
    
    command = sys.argv[1]
    
    if command == 'build':
        if len(sys.argv) < 3:
            print("错误: 请指定项目路径")
            return
        
        project_path = sys.argv[2]
        db_path = sys.argv[3] if len(sys.argv) > 3 else "code.db"
        
        if not os.path.exists(project_path):
            print(f"错误: 项目路径不存在: {project_path}")
            return
        
        build_code_graph(project_path, db_path)
    
    elif command == 'query':
        db_path = sys.argv[2] if len(sys.argv) > 2 else "code.db"
        
        if not os.path.exists(db_path):
            print(f"错误: 数据库不存在: {db_path}")
            print("请先运行 build 命令构建代码图谱")
            return
        
        interactive_query(db_path)
    
    else:
        print(f"未知命令: {command}")

if __name__ == "__main__":
    main()
