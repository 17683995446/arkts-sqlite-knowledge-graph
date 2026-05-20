import re
from typing import Dict, List
from file_scanner import calculate_file_hash

class ArkTSParser:
    def __init__(self):
        # 优化正则表达式，避免回溯
        self.class_pattern = re.compile(r'\b(?:class|struct)\s+(\w+)')
        # 使用非贪婪匹配和更精确的模式
        self.method_pattern = re.compile(r'\b(?:public|private|protected)?\s*(?:async\s+)?(\w+)\s*\([^)]{0,1000}?\)\s*(?::\s*\w+)?\s*\{')
        self.call_pattern = re.compile(r'\b(\w+)\s*\(')
        self.MAX_LINE_LENGTH = 10000  # 最大行长度限制
        self.MAX_METHOD_PARAM_LENGTH = 1000  # 方法参数最大长度
        
        self.keywords = [
            'if', 'for', 'while', 'switch', 'try', 'catch', 'finally',
            'return', 'new', 'class', 'import', 'export', 'const', 'let',
            'var', 'function', 'extends', 'implements', 'interface', 'type',
            'async', 'await', 'yield', 'default', 'delete', 'in', 'of',
            'void', 'typeof', 'instanceof', 'true', 'false', 'null',
            'undefined', 'static', 'readonly', 'protected', 'private',
            'public', 'abstract', 'get', 'set', 'constructor', 'this',
            'super', 'enum', 'namespace', 'declare', 'module', 'package',
            'from', 'as', 'with', 'arguments', 'eval', 'Text', 'Column', 
            'Row', 'Button', 'Image', 'Input', 'List', 'ForEach', 'If', 
            'Else', 'Switch', 'Case', 'Default', 'Scroll', 'Stack', 'Grid', 
            'Flex', 'Container', 'Swiper', 'Tabs', 'TabBar', 'TabContent', 
            'Navigator', 'Web', 'Video', 'Audio', 'Canvas', 'Lottie', 
            'XComponent', 'LoadingProgress', 'Progress', 'Marquee', 
            'ImageAnimator', 'SideBar', 'SideBarContainer', 'Search', 'Menu',
            'MenuItem', 'Badge', 'Circle', 'Ellipse', 'Line', 'Path', 
            'Polygon', 'Polyline', 'Rect', 'Shape', 'TextArea', 'Checkbox', 
            'CheckboxGroup', 'Radio', 'RadioGroup', 'Slider', 'Switch', 
            'TextInput', 'TextPicker', 'TimePicker', 'DatePicker', 'Picker', 
            'Select', 'Form', 'SelectOption', 'Option', 'Dialog', 
            'AlertDialog', 'ActionSheet', 'Popup', 'Toast', 'ScrollView', 
            'ListContainer', 'Refresh', 'LoadMore', 'PullToRefresh'
        ]

    def parse_file(self, file_path: str) -> Dict:
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
        except Exception as e:
            return {
                'file_path': file_path,
                'hash': calculate_file_hash(file_path),
                'classes': [],
                'methods': [],
                'calls': [],
                'components': []
            }
        
        if not content.strip():
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
        }
    
    def _preprocess_content(self, content: str) -> str:
        """预处理内容，避免超长行导致的性能灾难"""
        # 移除注释
        content = self._remove_comments(content)
        # 移除字符串
        content = self._remove_strings(content)
        # 处理超长行
        lines = content.split('\n')
        processed_lines = []
        
        for line in lines:
            if len(line) > self.MAX_LINE_LENGTH:
                processed_line = line[:self.MAX_LINE_LENGTH]
                processed_lines.append(processed_line)
            else:
                processed_lines.append(line)
        
        return '\n'.join(processed_lines)
    
    def _remove_comments(self, content: str) -> str:
        """移除单行和多行注释"""
        # 移除多行注释 /* ... */
        content = re.sub(r'/\*[\s\S]*?\*/', '', content)
        # 移除单行注释 //
        content = re.sub(r'//[^\n]*', '', content)
        return content
    
    def _remove_strings(self, content: str) -> str:
        """移除字符串字面量，避免误识别"""
        # 移除双引号字符串
        content = re.sub(r'"(?:[^"\\]|\\.)*"', '""', content)
        # 移除单引号字符串
        content = re.sub(r"'(?:[^'\\]|\\.)*'", "''", content)
        # 移除模板字符串 `
        content = re.sub(r'`(?:[^`\\]|\\.)*`', '``', content)
        return content

    def _extract_classes(self, content: str) -> List[Dict]:
        classes = []
        seen = set()
        matches = self.class_pattern.finditer(content)
        for match in matches:
            name = match.group(1)
            if name and name not in self.keywords and name not in seen:
                seen.add(name)
                classes.append({'name': name})
        return classes

    def _extract_methods(self, content: str, classes: List[Dict]) -> List[Dict]:
        methods = []
        class_info = []
        
        for cls in classes:
            pattern = re.compile(r'(?:class|struct)\s+' + re.escape(cls['name']))
            class_match = pattern.search(content)
            if class_match:
                class_info.append({
                    'name': cls['name'],
                    'start': class_match.start(),
                    'end': len(content)
                })
        
        matches = self.method_pattern.finditer(content)
        seen_methods = set()
        for match in matches:
            method_name = match.group(1)
            if not method_name or method_name in self.keywords:
                continue
            
            method_start = match.start()
            key = (method_name, method_start)
            if key in seen_methods:
                continue
            seen_methods.add(key)
            
            current_class = None
            for cls in class_info:
                if method_start >= cls['start']:
                    current_class = cls['name']
            
            methods.append({
                'name': method_name,
                'class_name': current_class
            })
        
        return methods

    def _extract_calls(self, content: str, methods: List[Dict], file_path: str) -> List[Dict]:
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
            i = content.find('{', caller_start)
            if i == -1:
                continue
            
            stack.append('{')
            for j in range(i + 1, len(content)):
                if content[j] == '{':
                    stack.append('{')
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
                    and (caller_name, callee_name) not in seen_pairs):
                    seen_pairs.add((caller_name, callee_name))
                    calls.append({
                        'caller': caller_name,
                        'callee': callee_name
                    })
        
        return calls

    def _extract_components(self, content: str, classes: List[Dict]) -> List[Dict]:
        components = []
        if not classes:
            return components
        
        for parent_cls in classes:
            parent_name = parent_cls['name']
            
            pattern = re.compile(r'(?:class|struct)\s+' + re.escape(parent_name))
            class_match = pattern.search(content)
            if not class_match:
                continue
            
            class_start = class_match.start()
            
            stack = []
            class_end = len(content)
            i = content.find('{', class_start)
            if i == -1:
                continue
            
            stack.append('{')
            for j in range(i + 1, len(content)):
                if content[j] == '{':
                    stack.append('{')
                elif content[j] == '}':
                    stack.pop()
                    if not stack:
                        class_end = j + 1
                        break
            
            class_content = content[class_start:class_end]
            
            seen = set()
            for child_cls in classes:
                child_name = child_cls['name']
                if (child_name != parent_name 
                    and child_name in class_content 
                    and (parent_name, child_name) not in seen):
                    seen.add((parent_name, child_name))
                    components.append({
                        'parent': parent_name,
                        'child': child_name
                    })
        
        return components
