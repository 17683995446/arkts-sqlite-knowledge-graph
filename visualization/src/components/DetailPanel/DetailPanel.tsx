import React from 'react';
import { X, File, Code2, GitBranch, Box, ArrowRight, ExternalLink } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import { GraphNode } from '../../types/graph';
import { useGraphStore } from '../../stores/graphStore';

export const DetailPanel: React.FC = () => {
  const { selectedNode, setSelectedNode, edges } = useGraphStore();

  if (!selectedNode) return null;

  const callers = edges.filter(e => 
    (typeof e.target === 'object' ? e.target.id : e.target) === selectedNode.id && e.type === 'calls'
  );
  const callees = edges.filter(e => 
    (typeof e.source === 'object' ? e.source.id : e.source) === selectedNode.id && e.type === 'calls'
  );

  const getNodeIcon = (type: string) => {
    switch (type) {
      case 'file': return <File className="w-5 h-5" />;
      case 'class': return <Code2 className="w-5 h-5" />;
      case 'method': return <GitBranch className="w-5 h-5" />;
      case 'component': return <Box className="w-5 h-5" />;
      default: return <Box className="w-5 h-5" />;
    }
  };

  const getNodeColor = (type: string) => {
    switch (type) {
      case 'file': return 'from-indigo-500 to-blue-600';
      case 'class': return 'from-purple-500 to-pink-600';
      case 'method': return 'from-cyan-500 to-teal-600';
      case 'component': return 'from-amber-500 to-orange-600';
      default: return 'from-slate-500 to-gray-600';
    }
  };

  return (
    <AnimatePresence>
      <motion.div
        initial={{ x: 320 }}
        animate={{ x: 0 }}
        exit={{ x: 320 }}
        className="absolute right-0 top-0 h-full w-96 bg-gradient-to-b from-slate-900/95 to-slate-800/95 backdrop-blur-xl border-l border-white/10 shadow-2xl z-10"
      >
        <div className="h-full flex flex-col">
          <div className="p-6 border-b border-white/10">
            <div className="flex items-center justify-between mb-4">
              <h2 className="text-lg font-bold text-white">节点详情</h2>
              <button
                onClick={() => setSelectedNode(null)}
                className="p-2 rounded-lg bg-white/5 hover:bg-white/10 transition-colors"
              >
                <X className="w-4 h-4 text-slate-400" />
              </button>
            </div>

            <div className="bg-gradient-to-r from-cyan-500/20 to-purple-500/20 rounded-xl p-4 border border-white/10">
              <div className="flex items-center gap-3 mb-3">
                <div className={`w-12 h-12 rounded-xl bg-gradient-to-br ${getNodeColor(selectedNode.type)} flex items-center justify-center`}>
                  <span className="text-white">{getNodeIcon(selectedNode.type)}</span>
                </div>
                <div>
                  <div className="text-white font-bold text-lg">{selectedNode.label}</div>
                  <div className="text-slate-400 text-sm capitalize">{selectedNode.type}</div>
                </div>
              </div>
              
              {selectedNode.data.path && (
                <div className="mt-3 flex items-center gap-2 text-xs text-slate-400 bg-white/5 rounded-lg px-3 py-2">
                  <ExternalLink className="w-3 h-3" />
                  <span className="font-mono truncate">{selectedNode.data.path}</span>
                </div>
              )}
            </div>
          </div>

          <div className="flex-1 overflow-y-auto p-6 space-y-6">
            <div>
              <h3 className="text-sm font-semibold text-slate-300 mb-3 flex items-center gap-2">
                <span className="w-2 h-2 rounded-full bg-cyan-500"></span>
                基本信息
              </h3>
              <div className="bg-white/5 rounded-xl p-4 space-y-3">
                <div className="flex justify-between items-center">
                  <span className="text-slate-400 text-sm">类型</span>
                  <span className="text-white text-sm font-medium capitalize">{selectedNode.type}</span>
                </div>
                <div className="flex justify-between items-center">
                  <span className="text-slate-400 text-sm">ID</span>
                  <span className="text-white text-sm font-mono">#{selectedNode.data.id}</span>
                </div>
                {selectedNode.data.methodCount !== undefined && (
                  <div className="flex justify-between items-center">
                    <span className="text-slate-400 text-sm">方法数</span>
                    <span className="text-cyan-400 text-sm font-bold">{selectedNode.data.methodCount}</span>
                  </div>
                )}
                {selectedNode.data.callCount !== undefined && (
                  <div className="flex justify-between items-center">
                    <span className="text-slate-400 text-sm">调用次数</span>
                    <span className="text-purple-400 text-sm font-bold">{selectedNode.data.callCount}</span>
                  </div>
                )}
              </div>
            </div>

            {callers.length > 0 && (
              <div>
                <h3 className="text-sm font-semibold text-slate-300 mb-3 flex items-center gap-2">
                  <span className="w-2 h-2 rounded-full bg-purple-500"></span>
                  被调用 ({callers.length})
                </h3>
                <div className="space-y-2">
                  {callers.map((edge, idx) => {
                    const caller = typeof edge.source === 'object' ? edge.source : null;
                    return caller ? (
                      <div
                        key={idx}
                        className="flex items-center gap-2 p-3 bg-white/5 rounded-lg hover:bg-white/10 transition-colors cursor-pointer"
                      >
                        <ArrowRight className="w-4 h-4 text-purple-400" />
                        <span className="text-white text-sm font-mono flex-1 truncate">
                          {caller.label}
                        </span>
                      </div>
                    ) : null;
                  })}
                </div>
              </div>
            )}

            {callees.length > 0 && (
              <div>
                <h3 className="text-sm font-semibold text-slate-300 mb-3 flex items-center gap-2">
                  <span className="w-2 h-2 rounded-full bg-amber-500"></span>
                  调用 ({callees.length})
                </h3>
                <div className="space-y-2">
                  {callees.map((edge, idx) => {
                    const callee = typeof edge.target === 'object' ? edge.target : null;
                    return callee ? (
                      <div
                        key={idx}
                        className="flex items-center gap-2 p-3 bg-white/5 rounded-lg hover:bg-white/10 transition-colors cursor-pointer"
                      >
                        <ArrowRight className="w-4 h-4 text-amber-400" />
                        <span className="text-white text-sm font-mono flex-1 truncate">
                          {callee.label}
                        </span>
                      </div>
                    ) : null;
                  })}
                </div>
              </div>
            )}

            <div>
              <h3 className="text-sm font-semibold text-slate-300 mb-3 flex items-center gap-2">
                <span className="w-2 h-2 rounded-full bg-indigo-500"></span>
                位置信息
              </h3>
              <div className="bg-white/5 rounded-xl p-4">
                {selectedNode.x !== undefined && selectedNode.y !== undefined && (
                  <div className="space-y-2 font-mono text-xs">
                    <div className="flex justify-between">
                      <span className="text-slate-400">X:</span>
                      <span className="text-cyan-400">{selectedNode.x.toFixed(1)}</span>
                    </div>
                    <div className="flex justify-between">
                      <span className="text-slate-400">Y:</span>
                      <span className="text-cyan-400">{selectedNode.y.toFixed(1)}</span>
                    </div>
                  </div>
                )}
              </div>
            </div>
          </div>

          <div className="p-6 border-t border-white/10 bg-gradient-to-t from-slate-900 to-transparent">
            <button
              className="w-full px-4 py-3 bg-gradient-to-r from-cyan-500 to-purple-500 text-white rounded-xl font-medium hover:opacity-90 transition-opacity flex items-center justify-center gap-2"
            >
              查看代码片段
            </button>
          </div>
        </div>
      </motion.div>
    </AnimatePresence>
  );
};
