import React, { useEffect, useState } from 'react';
import { GraphCanvas } from '../components/GraphCanvas/GraphCanvas';
import { ControlPanel } from '../components/ControlPanel/ControlPanel';
import { DetailPanel } from '../components/DetailPanel/DetailPanel';
import { StatsPanel } from '../components/StatsPanel/StatsPanel';
import { useGraphStore } from '../stores/graphStore';
import { loadGraphFromDatabase, calculateStats } from '../utils/dataLoader';
import { Loader2, AlertCircle, Brain, Code2 } from 'lucide-react';
import { motion } from 'framer-motion';

export const GraphPage: React.FC = () => {
  const { 
    nodes, 
    edges, 
    selectedNode, 
    isLoading, 
    error, 
    setNodes, 
    setEdges, 
    setStats, 
    setLoading, 
    setError,
  } = useGraphStore();

  const [dimensions, setDimensions] = useState({ width: 1200, height: 800 });

  useEffect(() => {
    const loadData = async () => {
      setLoading(true);
      try {
        const data = await loadGraphFromDatabase('code.db');
        setNodes(data.nodes);
        setEdges(data.edges);
        
        const stats = calculateStats(data.nodes, data.edges);
        setStats(stats);
      } catch (err) {
        setError(err instanceof Error ? err.message : '加载数据失败');
      } finally {
        setLoading(false);
      }
    };

    loadData();
  }, [setNodes, setEdges, setStats, setLoading, setError]);

  useEffect(() => {
    const updateDimensions = () => {
      setDimensions({
        width: window.innerWidth,
        height: window.innerHeight,
      });
    };

    updateDimensions();
    window.addEventListener('resize', updateDimensions);
    return () => window.removeEventListener('resize', updateDimensions);
  }, []);

  const handleNodeClick = (node: any) => {
    useGraphStore.getState().setSelectedNode(node);
  };

  const handleNodeHover = (node: any) => {
    if (node) {
      useGraphStore.getState().setHighlightedNodes(new Set([node.id]));
    }
  };

  if (isLoading) {
    return (
      <div className="relative w-full h-screen bg-slate-950 overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-slate-900 via-slate-950 to-indigo-950">
          <div className="absolute inset-0 opacity-30">
            {[...Array(50)].map((_, i) => (
              <motion.div
                key={i}
                className="absolute w-1 h-1 bg-cyan-400 rounded-full"
                initial={{ 
                  x: Math.random() * window.innerWidth,
                  y: Math.random() * window.innerHeight,
                  opacity: 0
                }}
                animate={{ 
                  opacity: [0, 1, 0],
                  scale: [1, 2, 1],
                }}
                transition={{
                  duration: Math.random() * 3 + 2,
                  repeat: Infinity,
                  delay: Math.random() * 5,
                }}
              />
            ))}
          </div>
        </div>

        <div className="relative z-10 flex flex-col items-center justify-center h-full">
          <motion.div
            initial={{ scale: 0 }}
            animate={{ scale: 1 }}
            transition={{ type: 'spring', duration: 0.5 }}
            className="bg-gradient-to-br from-cyan-500/20 to-purple-500/20 backdrop-blur-xl rounded-3xl p-12 border border-white/10 shadow-2xl"
          >
            <div className="flex flex-col items-center gap-6">
              <motion.div
                animate={{ rotate: 360 }}
                transition={{ duration: 2, repeat: Infinity, ease: 'linear' }}
              >
                <Loader2 className="w-16 h-16 text-cyan-400" />
              </motion.div>
              <div className="text-center">
                <h2 className="text-2xl font-bold text-white mb-2">
                  正在构建知识图谱
                </h2>
                <p className="text-slate-400">
                  正在分析和可视化您的代码结构...
                </p>
              </div>
            </div>
          </motion.div>
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="relative w-full h-screen bg-slate-950 overflow-hidden flex items-center justify-center">
        <div className="bg-red-500/10 backdrop-blur-xl rounded-2xl p-8 border border-red-500/20 max-w-md">
          <AlertCircle className="w-12 h-12 text-red-400 mx-auto mb-4" />
          <h2 className="text-xl font-bold text-white text-center mb-2">
            加载失败
          </h2>
          <p className="text-slate-400 text-center">{error}</p>
        </div>
      </div>
    );
  }

  return (
    <div className="relative w-full h-screen bg-slate-950 overflow-hidden">
      <div className="absolute inset-0 bg-gradient-to-br from-slate-900 via-slate-950 to-indigo-950">
        <div className="absolute inset-0 opacity-20">
          {[...Array(100)].map((_, i) => (
            <motion.div
              key={i}
              className="absolute w-0.5 h-0.5 bg-cyan-400 rounded-full"
              initial={{ 
                x: Math.random() * dimensions.width,
                y: Math.random() * dimensions.height,
                opacity: 0
              }}
              animate={{ 
                opacity: [0, 0.5, 0],
              }}
              transition={{
                duration: Math.random() * 5 + 3,
                repeat: Infinity,
                delay: Math.random() * 10,
              }}
            />
          ))}
        </div>

        <div className="absolute inset-0 bg-gradient-to-t from-slate-950/80 to-transparent pointer-events-none" />
      </div>

      <div className="relative z-10 h-full">
        <div className="absolute top-4 left-80 right-4 z-30">
          <div className="bg-slate-900/80 backdrop-blur-xl rounded-2xl p-4 border border-white/10 shadow-2xl">
            <div className="flex items-center gap-4">
              <div className="flex items-center gap-3">
                <div className="w-12 h-12 rounded-xl bg-gradient-to-br from-cyan-500 to-purple-600 flex items-center justify-center">
                  <Brain className="w-7 h-7 text-white" />
                </div>
                <div>
                  <h1 className="text-xl font-bold text-white">
                    代码知识图谱
                  </h1>
                  <p className="text-xs text-slate-400">
                    可视化分析平台
                  </p>
                </div>
              </div>
              
              <div className="flex-1" />

              <div className="flex items-center gap-2">
                <div className="px-4 py-2 rounded-xl bg-gradient-to-r from-cyan-500/20 to-purple-500/20 border border-cyan-500/30">
                  <div className="text-xs text-slate-400">节点总数</div>
                  <div className="text-lg font-bold text-cyan-400">
                    {nodes.length}
                  </div>
                </div>
                <div className="px-4 py-2 rounded-xl bg-gradient-to-r from-purple-500/20 to-pink-500/20 border border-purple-500/30">
                  <div className="text-xs text-slate-400">关系总数</div>
                  <div className="text-lg font-bold text-purple-400">
                    {edges.length}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <ControlPanel />
        
        <div className="pl-72 h-full pt-20">
          <GraphCanvas
            nodes={nodes}
            edges={edges}
            width={dimensions.width - 288}
            height={dimensions.height - 80}
            onNodeClick={handleNodeClick}
            onNodeHover={handleNodeHover}
          />
        </div>

        {selectedNode && <DetailPanel />}
        
        <StatsPanel stats={useGraphStore.getState().stats} />
      </div>
    </div>
  );
};
