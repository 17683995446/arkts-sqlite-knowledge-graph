import { GraphNode, GraphEdge, GraphData, StatsData } from '../types/graph';

export async function loadGraphFromDatabase(dbPath: string = 'code.db'): Promise<GraphData> {
  const nodes: GraphNode[] = [];
  const edges: GraphEdge[] = [];
  
  try {
    const response = await fetch(`http://localhost:3001/api/graph?dbPath=${dbPath}`);
    if (!response.ok) {
      throw new Error('Failed to fetch graph data from server');
    }
    const data = await response.json();
    return data as GraphData;
  } catch (error) {
    console.warn('Backend not available, using mock data:', error);
    return generateMockData();
  }
}

export function calculateStats(nodes: GraphNode[], edges: GraphEdge[]): StatsData {
  const files = nodes.filter(n => n.type === 'file');
  const classes = nodes.filter(n => n.type === 'class');
  const methods = nodes.filter(n => n.type === 'method');
  const components = nodes.filter(n => n.type === 'component');
  
  const calls = edges.filter(e => e.type === 'calls');
  const largestFile = files.reduce((max, file) => {
    const fileMethods = methods.filter(m => m.data.fileId === file.data.id);
    const maxFileMethods = fileMethods.length;
    return maxFileMethods > (max?.data.methodCount || 0) ? file : max;
  }, files[0]);
  
  const mostCalled = methods.reduce((max, method) => {
    const calls = edges.filter(e => e.target === method.id || (typeof e.target === 'object' && e.target.id === method.id));
    return calls.length > (max?.data.callCount || 0) ? method : max;
  }, methods[0]);

  const methodsPerClass = classes.map(c => 
    methods.filter(m => m.data.classId === c.data.id).length
  );

  return {
    totalFiles: files.length,
    totalClasses: classes.length,
    totalMethods: methods.length,
    totalCalls: calls.length,
    totalComponents: components.length,
    maxMethodsPerClass: Math.max(...methodsPerClass, 0),
    avgMethodsPerClass: methodsPerClass.length > 0 
      ? methodsPerClass.reduce((a, b) => a + b, 0) / methodsPerClass.length 
      : 0,
    mostCalledMethod: mostCalled?.label,
    largestFile: largestFile?.label,
  };
}

export function filterNodes(
  nodes: GraphNode[], 
  query: string, 
  types: string[]
): GraphNode[] {
  return nodes.filter(node => {
    if (!types.includes(node.type)) return false;
    if (query && !node.label.toLowerCase().includes(query.toLowerCase())) return false;
    return true;
  });
}

export function getNodeColor(type: string): number {
  const colors: Record<string, number> = {
    file: 0x6366f1,
    class: 0x8b5cf6,
    method: 0x06b6d4,
    component: 0xf59e0b,
    struct: 0x10b981,
  };
  return colors[type] || 0x6b7280;
}

export function getNodeRadius(type: string): number {
  const radii: Record<string, number> = {
    file: 40,
    class: 30,
    method: 15,
    component: 25,
    struct: 20,
  };
  return radii[type] || 20;
}

export function generateMockData(): GraphData {
  const nodes: GraphNode[] = [
    { id: 'file1', type: 'file', label: 'ExamplePage.arkts', x: 400, y: 300, data: { id: 1, name: 'ExamplePage.arkts', path: '/src/ExamplePage.arkts' } },
    { id: 'class1', type: 'class', label: 'ExamplePage', x: 350, y: 250, data: { id: 1, name: 'ExamplePage', fileId: 1 } },
    { id: 'class2', type: 'class', label: 'CustomComponent', x: 450, y: 350, data: { id: 2, name: 'CustomComponent', fileId: 1 } },
    { id: 'class3', type: 'class', label: 'DataManager', x: 550, y: 300, data: { id: 3, name: 'DataManager', fileId: 1 } },
    
    { id: 'method1', type: 'method', label: 'build', x: 300, y: 200, data: { id: 1, name: 'build', classId: 1, fileId: 1 } },
    { id: 'method2', type: 'method', label: 'handleClick', x: 280, y: 280, data: { id: 2, name: 'handleClick', classId: 1, fileId: 1 } },
    { id: 'method3', type: 'method', label: 'showToast', x: 260, y: 320, data: { id: 3, name: 'showToast', classId: 1, fileId: 1 } },
    { id: 'method4', type: 'method', label: 'increment', x: 480, y: 380, data: { id: 4, name: 'increment', classId: 2, fileId: 1 } },
    { id: 'method5', type: 'method', label: 'updateDisplay', x: 500, y: 420, data: { id: 5, name: 'updateDisplay', classId: 2, fileId: 1 } },
    { id: 'method6', type: 'method', label: 'constructor', x: 580, y: 260, data: { id: 6, name: 'constructor', classId: 3, fileId: 1 } },
    { id: 'method7', type: 'method', label: 'initData', x: 600, y: 300, data: { id: 7, name: 'initData', classId: 3, fileId: 1 } },
    { id: 'method8', type: 'method', label: 'addItem', x: 620, y: 340, data: { id: 8, name: 'addItem', classId: 3, fileId: 1 } },
    { id: 'method9', type: 'method', label: 'saveData', x: 640, y: 380, data: { id: 9, name: 'saveData', classId: 3, fileId: 1 } },
    { id: 'method10', type: 'method', label: 'getData', x: 660, y: 420, data: { id: 10, name: 'getData', classId: 3, fileId: 1 } },
  ];

  const edges: GraphEdge[] = [
    { source: 'class1', target: 'file1', type: 'contains' },
    { source: 'class2', target: 'file1', type: 'contains' },
    { source: 'class3', target: 'file1', type: 'contains' },
    { source: 'method1', target: 'class1', type: 'contains' },
    { source: 'method2', target: 'class1', type: 'contains' },
    { source: 'method3', target: 'class1', type: 'contains' },
    { source: 'method4', target: 'class2', type: 'contains' },
    { source: 'method5', target: 'class2', type: 'contains' },
    { source: 'method6', target: 'class3', type: 'contains' },
    { source: 'method7', target: 'class3', type: 'contains' },
    { source: 'method8', target: 'class3', type: 'contains' },
    { source: 'method9', target: 'class3', type: 'contains' },
    { source: 'method10', target: 'class3', type: 'contains' },
    
    { source: 'method1', target: 'method2', type: 'calls', weight: 2 },
    { source: 'method2', target: 'method3', type: 'calls', weight: 1 },
    { source: 'method4', target: 'method5', type: 'calls', weight: 1 },
    { source: 'method6', target: 'method7', type: 'calls', weight: 1 },
    { source: 'method8', target: 'method9', type: 'calls', weight: 1 },
    { source: 'class2', target: 'class1', type: 'nests', weight: 3 },
  ];

  return { nodes, edges };
}
