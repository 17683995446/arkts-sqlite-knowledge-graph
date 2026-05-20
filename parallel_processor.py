import multiprocessing
from typing import List, Dict
from arkts_parser import ArkTSParser
from database import CodeGraphDatabase, BATCH_SIZE

def parse_single_file(file_path: str) -> Dict:
    parser = ArkTSParser()
    return parser.parse_file(file_path)

def process_files_in_parallel(file_paths: List[str], db: CodeGraphDatabase, num_workers: int = None) -> int:
    if not num_workers:
        num_workers = multiprocessing.cpu_count()
    
    total_files = len(file_paths)
    processed = 0
    
    with multiprocessing.Pool(num_workers) as pool:
        for i in range(0, total_files, BATCH_SIZE):
            batch = file_paths[i:i + BATCH_SIZE]
            results = pool.map(parse_single_file, batch)
            
            with db._transaction():
                db.batch_insert(results)
            
            processed += len(batch)
            print(f"Processed {processed}/{total_files} files")
    
    return total_files
