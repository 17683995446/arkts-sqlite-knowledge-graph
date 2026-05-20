#!/usr/bin/env python3
"""
生成复杂真实的HarmonyOS项目结构用于测试
模拟真实的百万行级项目
"""

import os
import random
import string

def generate_random_name(prefix="Component"):
    """生成随机组件名称"""
    suffixes = ['Manager', 'Service', 'Controller', 'View', 'Widget', 
                'Handler', 'Helper', 'Utils', 'Provider', 'Consumer']
    return f"{prefix}{random.choice(suffixes)}{random.randint(1, 999)}"

def generate_imports(num_imports=5):
    """生成导入语句"""
    modules = [
        '@ohos.app.ability.Ability',
        '@ohos.app.ability.AbilityConstant',
        '@ohos.app.ability.StartOptions',
        '@ohos.app.ability.Want',
        '@ohos.common.TitleBar',
        '@ohos.promptAction',
        '@ohos.router',
        '@system.router',
        '@ohos.storage',
        '@ohos.storage.getStorage',
        '@ohos.storage.Storage',
        '@ohos.hilog',
        'common/CustomerButton',
        'common/CustomerText',
        'common/CustomerCard',
        'utils/Logger',
        'utils/DateUtils',
        'utils/StringUtils',
        'utils/ArrayUtils',
        'utils/ObjectUtils',
        'utils/ValidateUtils',
        'services/AuthService',
        'services/NetworkService',
        'services/DataService',
        'services/ConfigService',
        'models/UserModel',
        'models/ProductModel',
        'models/OrderModel',
        'models/CartModel',
    ]
    
    imports = []
    selected = random.sample(modules, min(num_imports, len(modules)))
    for mod in selected:
        name = mod.split('/')[-1]
        imports.append(f"import {{ {name} }} from '{mod}';")
    
    return '\n'.join(imports)

def generate_decorators():
    """生成装饰器"""
    decorators = [
        '@Entry',
        '@Component',
        '@Preview',
        '@Observed',
        '@State',
        '@Link',
        '@Prop',
        '@StorageLink',
        '@StorageProp',
    ]
    return random.choice(decorators)

def generate_struct():
    """生成Struct结构"""
    name = generate_random_name("Data")
    fields = []
    methods = []
    
    for i in range(random.randint(3, 8)):
        field_type = random.choice(['string', 'number', 'boolean', 'Array<string>', 'Object'])
        field_name = f"field{random.randint(1, 20)}"
        fields.append(f"  {field_name}: {field_type} = {repr('default') if field_type == 'string' else random.randint(0, 100)};")
    
    for i in range(random.randint(2, 5)):
        method_name = f"get{random.choice(['Field', 'Data', 'Info', 'Value'])}{random.randint(1, 20)}"
        methods.append(f"""
  {method_name}(): {random.choice(['string', 'number', 'boolean'])} {{
    return {repr('value') if random.choice([True, False]) else random.randint(0, 100)};
  }}
""")
    
    return f"""
struct {name} {{
{chr(10).join(fields)}
{chr(10).join(methods)}
}}
"""

def generate_component(has_decorator=True):
    """生成Component组件"""
    name = generate_random_name()
    
    imports = generate_imports(random.randint(3, 8))
    decorator = generate_decorators() if has_decorator else ""
    
    state_vars = []
    for i in range(random.randint(2, 6)):
        var_type = random.choice(['string', 'number', 'boolean', 'UserModel[]'])
        var_name = f"m{random.choice(['Name', 'Age', 'Count', 'Data', 'List', 'Status'])}{random.randint(1, 50)}"
        default = repr(f"value{random.randint(1, 100)}") if var_type == 'string' else (repr('true') if var_type == 'boolean' else random.randint(0, 100))
        state_vars.append(f"  @State {var_name}: {var_type} = {default};")
    
    build_content = []
    for i in range(random.randint(3, 10)):
        component_type = random.choice(['Row', 'Column', 'Stack', 'Flex'])
        build_content.append(f"        {component_type}() {{")
        for j in range(random.randint(1, 3)):
            child_type = random.choice(['Text', 'Button', 'Image', 'TextInput', 'List'])
            build_content.append(f"          {child_type}({repr(f'Item {j}')})")
        build_content.append(f"        }}")
    
    methods = []
    for i in range(random.randint(3, 8)):
        method_name = f"on{random.choice(['Click', 'Change', 'Submit', 'Load', 'Refresh', 'Init'])}{random.randint(1, 20)}"
        methods.append(f"""
  {method_name}(): void {{
    this.mCount = this.mCount + 1;
    this.mStatus = {repr('active')};
  }}
""")
    
    return f"""
{imports}

{decorator}
@Component
export struct {name} {{
{chr(10).join(state_vars)}

  build() {{
{chr(10).join(build_content)}
  }}
{chr(10).join(methods)}
}}
"""

def generate_service():
    """生成Service服务类"""
    name = generate_random_name("Service")
    
    imports = generate_imports(random.randint(2, 5))
    
    methods = []
    for i in range(random.randint(5, 12)):
        method_name = f"{random.choice(['get', 'set', 'fetch', 'load', 'save', 'delete', 'update'])}{random.choice(['Data', 'User', 'Product', 'Order', 'Config'])}{random.randint(1, 50)}"
        return_type = random.choice(['Promise<string>', 'Promise<number>', 'Promise<boolean>', 'Promise<Object>', 'void'])
        methods.append(f"""
  {method_name}(): {return_type} {{
    return new Promise((resolve) => {{
      setTimeout(() => {{
        resolve({repr('result') if return_type != 'void' else ''});
      }}, 100);
    }});
  }}
""")
    
    return f"""
{imports}

export class {name} {{
{chr(10).join(methods)}
}}
"""

def generate_model():
    """生成数据模型"""
    name = generate_random_name("Model")
    
    fields = []
    getters = []
    
    for i in range(random.randint(5, 15)):
        field_type = random.choice(['string', 'number', 'boolean', 'Date', 'UserModel[]', 'ProductModel[]'])
        field_name = f"{random.choice(['id', 'name', 'age', 'email', 'phone', 'address', 'status', 'created', 'updated'])}{random.randint(1, 100)}"
        default = repr('default') if field_type == 'string' else (repr(True) if field_type == 'boolean' else random.randint(0, 100))
        fields.append(f"  {field_name}: {field_type} = {default};")
        getters.append(f"""
  get{field_name.title()}(): {field_type} {{
    return this.{field_name};
  }}
""")
    
    return f"""
export class {name} {{
{chr(10).join(fields)}

{chr(10).join(getters)}
}}
"""

def generate_page():
    """生成页面"""
    name = generate_random_name("Page")
    
    imports = generate_imports(random.randint(5, 10))
    
    state_vars = []
    for i in range(random.randint(5, 15)):
        var_type = random.choice(['string', 'number', 'boolean', 'UserModel[]', 'ProductModel[]', 'OrderModel[]'])
        var_name = f"m{random.choice(['Users', 'Products', 'Orders', 'Data', 'List', 'Status', 'Loading', 'Error'])}{random.randint(1, 100)}"
        default = repr('value') if var_type == 'string' else (repr(False) if 'Loading' in var_name else f"[]" if '[]' in var_type else random.randint(0, 100))
        state_vars.append(f"  @State {var_name}: {var_type} = {default};")
    
    lifecycle_methods = [
        """
  aboutToAppear(): void {{
    this.loadData();
  }}
""",
        """
  aboutToDisappear(): void {{
    this.cleanup();
  }}
"""
    ]
    
    data_methods = []
    for i in range(random.randint(5, 10)):
        method_name = f"{random.choice(['load', 'fetch', 'get', 'refresh'])}{random.choice(['Data', 'Users', 'Products', 'Orders', 'List'])}{random.randint(1, 20)}"
        data_methods.append(f"""
  async {method_name}(): Promise<void> {{
    try {{
      this.mLoading = true;
      const result = await this.dataService.{method_name}();
      this.mData = result;
    }} catch (e) {{
      this.mError = e.message;
    }} finally {{
      this.mLoading = false;
    }}
  }}
""")
    
    build_widgets = []
    for i in range(random.randint(5, 15)):
        component_name = generate_random_name()[:-random.randint(1, 3)]
        build_widgets.append(f"        {component_name}()")
    
    return f"""
{imports}

@Entry
@Component
export struct {name} {{
{chr(10).join(state_vars)}
{chr(10).join(lifecycle_methods)}
{chr(10).join(data_methods)}

  build() {{
{chr(10).join(build_widgets)}
  }}
}}
"""

def generate_file(file_path, file_type):
    """生成单个文件"""
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    
    generators = {
        'component': generate_component,
        'service': generate_service,
        'model': generate_model,
        'page': generate_page,
        'struct': generate_struct,
    }
    
    content = generators[file_type]()
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

def generate_test_project(base_path, num_files=500):
    """生成完整的测试项目"""
    print(f"生成测试项目到 {base_path}...")
    print(f"目标文件数: {num_files}")
    
    file_types = [
        ('components', 'component', 0.4),
        ('pages', 'page', 0.2),
        ('services', 'service', 0.15),
        ('models', 'model', 0.15),
        ('common', 'struct', 0.1),
    ]
    
    total_generated = 0
    for directory, file_type, ratio in file_types:
        num_files_type = int(num_files * ratio)
        print(f"\n生成 {num_files_type} 个 {file_type} 文件到 {directory}/...")
        
        for i in range(num_files_type):
            file_name = f"{generate_random_name()[:-random.randint(1, 3)]}.ets"
            file_path = os.path.join(base_path, directory, file_name)
            
            try:
                generate_file(file_path, file_type)
                total_generated += 1
                
                if (i + 1) % 50 == 0:
                    print(f"  已生成 {i + 1}/{num_files_type} 个文件")
            except Exception as e:
                print(f"  生成文件失败: {file_path}, 错误: {e}")
        
        print(f"  ✓ 完成生成 {num_files_type} 个 {file_type} 文件")
    
    print(f"\n✅ 测试项目生成完成！")
    print(f"   总文件数: {total_generated}")
    print(f"   目录: {base_path}")

if __name__ == "__main__":
    import sys
    
    num_files = int(sys.argv[1]) if len(sys.argv) > 1 else 500
    base_path = sys.argv[2] if len(sys.argv) > 2 else "/workspace/test_project"
    
    generate_test_project(base_path, num_files)
