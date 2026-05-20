import React, { useState, useCallback } from 'react';
import { Search, Filter, Layers, Zap, Eye, EyeOff, RefreshCw } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import { useGraphStore } from '../../stores/graphStore';
import { NodeType } from '../../types/graph';
import { filterNodes } from '../../utils/dataLoader';

export const ControlPanel: React.FC = () => {
  const { 
    nodes, 
    searchFilters, 
    updateSearchFilters,
    viewSettings,
    updateViewSettings,
    setHighlightedNodes,
    setSelectedNode,
  } = useGraphStore();

  const [isCollapsed, setIsCollapsed] = useState(false);
  const [localQuery, setLocalQuery] = useState('');

  const handleSearch = useCallback((query: string) => {
    setLocalQuery(query);
    updateSearchFilters({ query });
    
    const filtered = filterNodes(nodes, query, searchFilters.types);
    setHighlightedNodes(new Set(filtered.map(n => n.id)));
  }, [nodes, searchFilters.types, updateSearchFilters, setHighlightedNodes]);

  const toggleType = (type: NodeType) => {
    const newTypes = searchFilters.types.includes(type)
      ? searchFilters.types.filter(t => t !== type)
      : [...searchFilters.types, type];
    
    updateSearchFilters({ types: newTypes });
  };

  const handleZoomIn = () => {
    updateViewSettings({ zoom: Math.min(viewSettings.zoom * 1.2, 5) });
  };

  const handleZoomOut = () => {
    updateViewSettings({ zoom: Math.max(viewSettings.zoom / 1.2, 0.2) });
  };

  const handleResetView = () => {
    updateViewSettings({ zoom: 1, panX: 0, panY: 0 });
  };

  const handlePhysicsToggle = () => {
    updateViewSettings({ physicsEnabled: !viewSettings.physicsEnabled });
  };

  const handleNodeClick = (node: any) => {
    setSelectedNode(node);
    setHighlightedNodes(new Set([node.id]));
  };

  return (
    <motion.div
      initial={{ x: -280 }}
      animate={{ x: 0 }}
      className="absolute left-0 top-0 h-full w-72 bg-gradient-to-b from-slate-900/95 to-slate-800/95 backdrop-blur-xl border-r border-white/10 shadow-2xl z-10"
    >
      <div className="p-6">
        <div className="flex items-center justify-between mb-6">
          <h2 className="text-xl font-bold bg-gradient-to-r from-cyan-400 to-purple-500 bg-clip-text text-transparent">
            控制面板
          </h2>
          <button
            onClick={() => setIsCollapsed(!isCollapsed)}
            className="p-2 rounded-lg bg-white/5 hover:bg-white/10 transition-colors"
          >
            {isCollapsed ? <Eye className="w-4 h-4" /> : <EyeOff className="w-4 h-4" />}
          </button>
        </div>

        <AnimatePresence>
          {!isCollapsed && (
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              className="space-y-6"
            >
              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  搜索节点
                </label>
                <div className="relative">
                  <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 w-4 h-4 text-slate-400" />
                  <input
                    type="text"
                    value={localQuery}
                    onChange={(e) => handleSearch(e.target.value)}
                    placeholder="搜索类、方法、文件..."
                    className="w-full pl-10 pr-4 py-3 bg-white/5 border border-white/10 rounded-xl text-slate-200 placeholder-slate-500 focus:outline-none focus:ring-2 focus:ring-cyan-500/50 focus:border-cyan-500/50 transition-all"
                  />
                </div>
              </div>

              <div>
                <div className="flex items-center gap-2 mb-3">
                  <Filter className="w-4 h-4 text-purple-400" />
                  <label className="text-sm font-medium text-slate-300">
                    过滤器
                  </label>
                </div>
                <div className="space-y-2">
                  {(['file', 'class', 'method', 'component'] as NodeType[]).map((type) => (
                    <label
                      key={type}
                      className="flex items-center gap-3 p-2 rounded-lg bg-white/5 hover:bg-white/10 cursor-pointer transition-all group"
                    >
                      <input
                        type="checkbox"
                        checked={searchFilters.types.includes(type)}
                        onChange={() => toggleType(type)}
                        className="w-4 h-4 rounded border-slate-600 bg-slate-800 text-cyan-500 focus:ring-cyan-500/50"
                      />
                      <span className="text-sm text-slate-300 group-hover:text-white transition-colors capitalize">
                        {type === 'file' && '📄 文件'}
                        {type === 'class' && '🏛️ 类'}
                        {type === 'method' && '⚡ 方法'}
                        {type === 'component' && '🧩 组件'}
                      </span>
                    </label>
                  ))}
                </div>
              </div>

              <div>
                <div className="flex items-center gap-2 mb-3">
                  <Layers className="w-4 h-4 text-amber-400" />
                  <label className="text-sm font-medium text-slate-300">
                    视图设置
                  </label>
                </div>
                <div className="space-y-2">
                  <button
                    onClick={handleZoomIn}
                    className="w-full px-4 py-2 bg-white/5 hover:bg-white/10 border border-white/10 rounded-lg text-sm text-slate-300 transition-all flex items-center justify-center gap-2"
                  >
                    放大
                  </button>
                  <button
                    onClick={handleZoomOut}
                    className="w-full px-4 py-2 bg-white/5 hover:bg-white/10 border border-white/10 rounded-lg text-sm text-slate-300 transition-all flex items-center justify-center gap-2"
                  >
                    缩小
                  </button>
                  <button
                    onClick={handleResetView}
                    className="w-full px-4 py-2 bg-white/5 hover:bg-white/10 border border-white/10 rounded-lg text-sm text-slate-300 transition-all flex items-center justify-center gap-2"
                  >
                    <RefreshCw className="w-4 h-4" />
                    重置视图
                  </button>
                </div>
              </div>

              <div>
                <button
                  onClick={handlePhysicsToggle}
                  className={`
                    w-full px-4 py-3 rounded-xl text-sm font-medium transition-all flex items-center justify-center gap-2
                    ${viewSettings.physicsEnabled 
                      ? 'bg-gradient-to-r from-cyan-500 to-purple-500 text-white shadow-lg shadow-cyan-500/25' 
                      : 'bg-white/5 hover:bg-white/10 border border-white/10 text-slate-300'
                    }
                  `}
                >
                  <Zap className={`w-4 h-4 ${viewSettings.physicsEnabled ? 'animate-pulse' : ''}`} />
                  {viewSettings.physicsEnabled ? '物理引擎运行中' : '物理引擎已停止'}
                </button>
              </div>

              <div>
                <label className="flex items-center gap-3 p-3 rounded-lg bg-white/5 hover:bg-white/10 cursor-pointer transition-all">
                  <input
                    type="checkbox"
                    checked={viewSettings.showLabels}
                    onChange={() => updateViewSettings({ showLabels: !viewSettings.showLabels })}
                    className="w-4 h-4 rounded border-slate-600 bg-slate-800 text-cyan-500 focus:ring-cyan-500/50"
                  />
                  <span className="text-sm text-slate-300">显示标签</span>
                </label>
              </div>

              <div className="pt-4 border-t border-white/10">
                <div className="text-xs text-slate-500">
                  当前缩放: {(viewSettings.zoom * 100).toFixed(0)}%
                </div>
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </div>

      <div className="absolute bottom-0 left-0 right-0 p-6 bg-gradient-to-t from-slate-900 to-transparent">
        <div className="text-xs text-slate-500 text-center">
          代码知识图谱可视化平台 v1.0
        </div>
      </div>
    </motion.div>
  );
};
