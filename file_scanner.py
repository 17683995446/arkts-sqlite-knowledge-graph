import os
import hashlib
from typing import List, Dict, Tuple

def calculate_file_hash(file_path: str) -> str:
    hash_obj = hashlib.sha256()
    try:
        with open(file_path, 'rb') as f:
            for chunk in iter(lambda: f.read(8192), b''):
                hash_obj.update(chunk)
        return hash_obj.hexdigest()
    except Exception:
        return ""

def scan_project(project_path: str, extensions: Tuple[str] = ('.ts', '.tsx', '.arkts', '.ets')) -> List[Tuple[str, str]]:
    files = []
    for root, _, filenames in os.walk(project_path):
        for filename in filenames:
            if filename.endswith(extensions):
                file_path = os.path.join(root, filename)
                files.append(file_path)
    return sorted(files)

def get_changed_files(project_path: str, old_hashes: Dict[str, str]) -> Tuple[List[str], List[str]]:
    all_files = scan_project(project_path)
    changed = []
    unchanged = []
    
    for file_path in all_files:
        new_hash = calculate_file_hash(file_path)
        old_hash = old_hashes.get(file_path)
        
        if old_hash != new_hash:
            changed.append(file_path)
        else:
            unchanged.append(file_path)
    
    return changed, unchanged
