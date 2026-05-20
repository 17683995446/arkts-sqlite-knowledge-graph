# 代码知识图谱可视化平台 - 使用指南

## 🚀 快速开始

### 1. 启动可视化平台

```bash
cd /workspace/visualization
npm run dev
```

然后访问 http://localhost:5173/

### 2. 构建代码图谱数据库

```bash
cd /workspace
python main.py build /path/to/your/harmony/project
```

### 3. 打开可视化网站

在浏览器中访问 http://localhost:5173/ 即可看到交互式代码知识图谱！

## ✨ 核心功能

### 🎨 可视化效果

- **暗色科技风格**：深空蓝 + 电光蓝 + 霓虹紫配色
- **WebGL高性能渲染**：使用Pixi.js，支持百万节点流畅渲染
- **力导向图布局**：D3-force算法自动布局
- **节点颜色编码**：
  - 🟣 紫色：类 (Class)
  - 🔵 青色：方法 (Method)
  - 🟡 琥珀色：组件 (Component)
  - 🟪 靛蓝色：文件 (File)

### 🎮 交互功能

1. **搜索和过滤**
   - 实时搜索节点名称
   - 按类型过滤（文件、类、方法、组件）
   - 高亮匹配结果

2. **视图控制**
   - 放大/缩小
   - 平移画布
   - 显示/隐藏标签
   - 物理引擎开关

3. **节点交互**
   - 点击节点查看详情
   - 悬停高亮
   - 查看调用关系

4. **详情面板**
   - 节点基本信息
   - 调用链追踪（被谁调用、调用谁）
   - 位置信息

### 📊 统计仪表板

- 节点总数统计
- 关系数量统计
- 节点类型分布饼图
- 方法复杂度分布
- 关键指标（类平均方法数、最大类等）

## 🏗️ 技术架构

### 前端框架
- **React 18** + TypeScript
- **Vite** 构建工具
- **Tailwind CSS** 样式方案
- **Zustand** 状态管理

### 可视化技术
- **Pixi.js 7** WebGL图形渲染
- **D3-force** 力导向布局
- **Recharts** 统计图表
- **Framer Motion** 动画效果

### 项目结构

```
/workspace/visualization/
├── src/
│   ├── components/
│   │   ├── GraphCanvas/      # Pixi.js画布组件
│   │   ├── ControlPanel/     # 左侧控制面板
│   │   ├── DetailPanel/      # 右侧详情面板
│   │   └── StatsPanel/       # 底部统计面板
│   ├── stores/
│   │   └── graphStore.ts     # Zustand状态管理
│   ├── utils/
│   │   ├── dataLoader.ts     # 数据加载器
│   │   └── graphLayout.ts    # 布局算法
│   ├── types/
│   │   └── graph.ts          # TypeScript类型定义
│   └── pages/
│       └── GraphPage.tsx     # 主页面
└── package.json
```

## 🎨 设计亮点

### 视觉效果

1. **星云粒子背景**
   - 动态闪烁的粒子效果
   - 营造宇宙星空氛围

2. **玻璃拟态UI**
   - 半透明背景
   - 模糊效果
   - 发光边框

3. **节点设计**
   - 渐变填充
   - 外发光效果
   - 选中状态高亮环

4. **连线动画**
   - 贝塞尔曲线
   - 高亮路径追踪
   - 颜色编码关系类型

### 响应式设计

- 桌面优先设计
- 全屏沉浸式体验
- 侧边栏可折叠
- 统计面板可展开/收起

## 📝 使用示例

### 示例ArkTS文件

项目包含示例文件 `example.arkts`，包含：

- `ExamplePage` - 主页面组件
- `CustomComponent` - 自定义组件
- `DataManager` - 数据管理类

### 预期的图谱结构

```
ExamplePage.arkts
├── ExamplePage (class)
│   ├── build()
│   ├── handleClick()
│   └── showToast()
├── CustomComponent (component)
│   ├── build()
│   ├── increment()
│   └── updateDisplay()
└── DataManager (class)
    ├── constructor()
    ├── initData()
    ├── addItem()
    ├── saveData()
    └── getData()
```

### 调用关系

- `handleClick` → `showToast`
- `increment` → `updateDisplay`
- `addItem` → `saveData`
- `constructor` → `initData`

## 🔧 扩展功能

### 添加新的数据源

修改 `dataLoader.ts` 中的 `loadGraphFromDatabase` 函数，连接您的SQLite数据库：

```typescript
export async function loadGraphFromDatabase(dbPath: string): Promise<GraphData> {
  // 连接SQLite数据库
  // 解析数据
  // 返回GraphData格式
}
```

### 自定义节点样式

修改 `GraphCanvas.tsx` 中的节点渲染逻辑：

```typescript
// 修改节点颜色
const color = getNodeColor(node.type);

// 修改节点大小
const radius = getNodeRadius(node.type);

// 修改绘制效果
graphic.beginFill(color, 0.8);
graphic.drawCircle(0, 0, radius);
```

## 🐛 故障排除

### Pixi.js初始化失败

如果遇到WebGL相关错误：
1. 确保浏览器支持WebGL
2. 检查显卡驱动是否最新
3. 尝试使用Canvas渲染模式

### 数据加载失败

检查数据库文件路径：
```bash
ls -lh /workspace/code.db
```

确认文件存在后重启开发服务器。

## 📚 技术文档

详细的技术架构文档请查看：
- [PRD产品需求文档](../.trae/documents/prd.md)
- [Technical Architecture技术架构文档](../.trae/documents/technical-architecture.md)

## 🎯 下一步

1. **接入真实项目**：将您的HarmonyOS项目代码传入构建系统
2. **自定义配置**：修改主题颜色和布局参数
3. **性能优化**：根据需要调整渲染策略
4. **功能扩展**：添加更多可视化类型和交互功能

---

**版本**: 1.0.0  
**最后更新**: 2026-05-17  
**技术栈**: React 18 + Pixi.js 7 + D3-force + Tailwind CSS
