export type NodeType = 'file' | 'class' | 'method' | 'component' | 'struct';

export interface GraphNode {
  id: string;
  type: NodeType;
  label: string;
  x?: number;
  y?: number;
  vx?: number;
  vy?: number;
  fx?: number | null;
  fy?: number | null;
  data: NodeData;
}

export interface NodeData {
  id: number;
  name: string;
  fileId?: number;
  classId?: number;
  path?: string;
  methodCount?: number;
  callCount?: number;
  componentCount?: number;
}

export interface GraphEdge {
  source: string | GraphNode;
  target: string | GraphNode;
  type: 'calls' | 'contains' | 'imports' | 'extends' | 'nests';
  weight?: number;
}

export interface GraphData {
  nodes: GraphNode[];
  edges: GraphEdge[];
}

export interface SearchFilters {
  query: string;
  types: NodeType[];
  showFiles: boolean;
  showClasses: boolean;
  showMethods: boolean;
  showComponents: boolean;
}

export interface ViewSettings {
  level: 'file' | 'class' | 'method' | 'component';
  zoom: number;
  panX: number;
  panY: number;
  showLabels: boolean;
  showEdges: boolean;
  physicsEnabled: boolean;
}

export interface NodeDetail {
  id: number;
  type: NodeType;
  name: string;
  path?: string;
  file?: string;
  methods?: string[];
  callers?: string[];
  callees?: string[];
  components?: string[];
  definition?: string;
}

export interface StatsData {
  totalFiles: number;
  totalClasses: number;
  totalMethods: number;
  totalCalls: number;
  totalComponents: number;
  maxMethodsPerClass: number;
  avgMethodsPerClass: number;
  mostCalledMethod?: string;
  largestFile?: string;
}

export interface CallChain {
  path: string[];
  depth: number;
}
