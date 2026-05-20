import { create } from 'zustand';
import { GraphNode, GraphEdge, SearchFilters, ViewSettings, StatsData, NodeDetail } from '../types/graph';

interface GraphStore {
  nodes: GraphNode[];
  edges: GraphEdge[];
  selectedNode: GraphNode | null;
  highlightedNodes: Set<string>;
  searchFilters: SearchFilters;
  viewSettings: ViewSettings;
  stats: StatsData | null;
  isLoading: boolean;
  error: string | null;
  
  setNodes: (nodes: GraphNode[]) => void;
  setEdges: (edges: GraphEdge[]) => void;
  setSelectedNode: (node: GraphNode | null) => void;
  setHighlightedNodes: (nodes: Set<string>) => void;
  updateSearchFilters: (filters: Partial<SearchFilters>) => void;
  updateViewSettings: (settings: Partial<ViewSettings>) => void;
  setStats: (stats: StatsData) => void;
  setLoading: (loading: boolean) => void;
  setError: (error: string | null) => void;
  reset: () => void;
}

const initialFilters: SearchFilters = {
  query: '',
  types: ['file', 'class', 'method', 'component'],
  showFiles: true,
  showClasses: true,
  showMethods: true,
  showComponents: true,
};

const initialViewSettings: ViewSettings = {
  level: 'class',
  zoom: 1,
  panX: 0,
  panY: 0,
  showLabels: true,
  showEdges: true,
  physicsEnabled: true,
};

export const useGraphStore = create<GraphStore>((set) => ({
  nodes: [],
  edges: [],
  selectedNode: null,
  highlightedNodes: new Set(),
  searchFilters: initialFilters,
  viewSettings: initialViewSettings,
  stats: null,
  isLoading: false,
  error: null,

  setNodes: (nodes) => set({ nodes }),
  setEdges: (edges) => set({ edges }),
  setSelectedNode: (node) => set({ selectedNode: node }),
  setHighlightedNodes: (nodes) => set({ highlightedNodes: nodes }),
  
  updateSearchFilters: (filters) => set((state) => ({
    searchFilters: { ...state.searchFilters, ...filters }
  })),
  
  updateViewSettings: (settings) => set((state) => ({
    viewSettings: { ...state.viewSettings, ...settings }
  })),
  
  setStats: (stats) => set({ stats }),
  setLoading: (loading) => set({ isLoading: loading }),
  setError: (error) => set({ error }),
  
  reset: () => set({
    nodes: [],
    edges: [],
    selectedNode: null,
    highlightedNodes: new Set(),
    searchFilters: initialFilters,
    viewSettings: initialViewSettings,
    stats: null,
    isLoading: false,
    error: null,
  }),
}));
