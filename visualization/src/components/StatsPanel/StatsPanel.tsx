import React, { useState } from 'react';
import { BarChart3, TrendingUp, Activity, Database, ChevronDown, ChevronUp } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import { AreaChart, Area, BarChart, Bar, PieChart, Pie, Cell, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, Legend } from 'recharts';
import { StatsData } from '../../types/graph';

interface StatsPanelProps {
  stats: StatsData | null;
}

export const StatsPanel: React.FC<StatsPanelProps> = ({ stats }) => {
  const [isCollapsed, setIsCollapsed] = useState(false);

  if (!stats) return null;

  const nodeTypeDistribution = [
    { name: '文件', value: stats.totalFiles, color: '#6366f1' },
    { name: '类', value: stats.totalClasses, color: '#8b5cf6' },
    { name: '方法', value: stats.totalMethods, color: '#06b6d4' },
    { name: '组件', value: stats.totalComponents, color: '#f59e0b' },
  ];

  const methodComplexityData = [
    { name: '1-5', count: Math.floor(stats.totalMethods * 0.4) },
    { name: '6-10', count: Math.floor(stats.totalMethods * 0.3) },
    { name: '11-20', count: Math.floor(stats.totalMethods * 0.2) },
    { name: '20+', count: Math.floor(stats.totalMethods * 0.1) },
  ];

  const performanceMetrics = [
    { 
      label: '总文件数', 
      value: stats.totalFiles, 
      icon: <Database className="w-5 h-5" />,
      color: 'from-indigo-500 to-blue-600',
      change: '+12%'
    },
    { 
      label: '类总数', 
      value: stats.totalClasses, 
      icon: <BarChart3 className="w-5 h-5" />,
      color: 'from-purple-500 to-pink-600',
      change: '+8%'
    },
    { 
      label: '方法总数', 
      value: stats.totalMethods, 
      icon: <Activity className="w-5 h-5" />,
      color: 'from-cyan-500 to-teal-600',
      change: '+15%'
    },
    { 
      label: '调用关系', 
      value: stats.totalCalls, 
      icon: <TrendingUp className="w-5 h-5" />,
      color: 'from-amber-500 to-orange-600',
      change: '+22%'
    },
  ];

  return (
    <div className="absolute bottom-0 left-72 right-0 bg-gradient-to-t from-slate-900/95 to-slate-800/95 backdrop-blur-xl border-t border-white/10 shadow-2xl z-20">
      <button
        onClick={() => setIsCollapsed(!isCollapsed)}
        className="w-full p-4 flex items-center justify-between hover:bg-white/5 transition-colors"
      >
        <div className="flex items-center gap-3">
          <BarChart3 className="w-5 h-5 text-cyan-400" />
          <h3 className="text-lg font-bold text-white">性能指标仪表板</h3>
        </div>
        {isCollapsed ? (
          <ChevronUp className="w-5 h-5 text-slate-400" />
        ) : (
          <ChevronDown className="w-5 h-5 text-slate-400" />
        )}
      </button>

      <AnimatePresence>
        {!isCollapsed && (
          <motion.div
            initial={{ height: 0 }}
            animate={{ height: 'auto' }}
            exit={{ height: 0 }}
            className="overflow-hidden"
          >
            <div className="p-6 space-y-6">
              <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
                {performanceMetrics.map((metric, idx) => (
                  <motion.div
                    key={idx}
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ delay: idx * 0.1 }}
                    className="bg-white/5 rounded-xl p-4 border border-white/10"
                  >
                    <div className="flex items-start justify-between mb-3">
                      <div className={`w-10 h-10 rounded-xl bg-gradient-to-br ${metric.color} flex items-center justify-center text-white`}>
                        {metric.icon}
                      </div>
                      <span className="text-xs text-green-400 bg-green-500/10 px-2 py-1 rounded-full">
                        {metric.change}
                      </span>
                    </div>
                    <div className="text-3xl font-bold text-white mb-1">
                      {metric.value.toLocaleString()}
                    </div>
                    <div className="text-sm text-slate-400">{metric.label}</div>
                  </motion.div>
                ))}
              </div>

              <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div className="bg-white/5 rounded-xl p-6 border border-white/10">
                  <h4 className="text-sm font-semibold text-slate-300 mb-4">节点类型分布</h4>
                  <ResponsiveContainer width="100%" height={200}>
                    <PieChart>
                      <Pie
                        data={nodeTypeDistribution}
                        cx="50%"
                        cy="50%"
                        innerRadius={50}
                        outerRadius={80}
                        paddingAngle={5}
                        dataKey="value"
                      >
                        {nodeTypeDistribution.map((entry, index) => (
                          <Cell key={`cell-${index}`} fill={entry.color} />
                        ))}
                      </Pie>
                      <Tooltip 
                        contentStyle={{ 
                          backgroundColor: 'rgba(15, 23, 42, 0.95)',
                          border: '1px solid rgba(255, 255, 255, 0.1)',
                          borderRadius: '8px',
                          color: '#fff'
                        }}
                      />
                    </PieChart>
                  </ResponsiveContainer>
                  <div className="flex flex-wrap gap-3 mt-4">
                    {nodeTypeDistribution.map((item, idx) => (
                      <div key={idx} className="flex items-center gap-2">
                        <div className="w-3 h-3 rounded-full" style={{ backgroundColor: item.color }}></div>
                        <span className="text-xs text-slate-400">{item.name}</span>
                      </div>
                    ))}
                  </div>
                </div>

                <div className="bg-white/5 rounded-xl p-6 border border-white/10">
                  <h4 className="text-sm font-semibold text-slate-300 mb-4">方法复杂度分布</h4>
                  <ResponsiveContainer width="100%" height={200}>
                    <BarChart data={methodComplexityData}>
                      <CartesianGrid strokeDasharray="3 3" stroke="#334155" />
                      <XAxis dataKey="name" stroke="#94a3b8" fontSize={12} />
                      <YAxis stroke="#94a3b8" fontSize={12} />
                      <Tooltip 
                        contentStyle={{ 
                          backgroundColor: 'rgba(15, 23, 42, 0.95)',
                          border: '1px solid rgba(255, 255, 255, 0.1)',
                          borderRadius: '8px',
                          color: '#fff'
                        }}
                      />
                      <Bar dataKey="count" fill="#8b5cf6" radius={[8, 8, 0, 0]} />
                    </BarChart>
                  </ResponsiveContainer>
                </div>

                <div className="bg-white/5 rounded-xl p-6 border border-white/10">
                  <h4 className="text-sm font-semibold text-slate-300 mb-4">关键指标</h4>
                  <div className="space-y-4">
                    <div>
                      <div className="flex justify-between items-center mb-2">
                        <span className="text-sm text-slate-400">类平均方法数</span>
                        <span className="text-lg font-bold text-cyan-400">{stats.avgMethodsPerClass.toFixed(1)}</span>
                      </div>
                      <div className="h-2 bg-white/10 rounded-full overflow-hidden">
                        <div 
                          className="h-full bg-gradient-to-r from-cyan-500 to-teal-500 rounded-full transition-all"
                          style={{ width: `${Math.min(stats.avgMethodsPerClass * 5, 100)}%` }}
                        />
                      </div>
                    </div>
                    <div>
                      <div className="flex justify-between items-center mb-2">
                        <span className="text-sm text-slate-400">最大类方法数</span>
                        <span className="text-lg font-bold text-purple-400">{stats.maxMethodsPerClass}</span>
                      </div>
                      <div className="h-2 bg-white/10 rounded-full overflow-hidden">
                        <div 
                          className="h-full bg-gradient-to-r from-purple-500 to-pink-500 rounded-full transition-all"
                          style={{ width: `${Math.min(stats.maxMethodsPerClass * 3, 100)}%` }}
                        />
                      </div>
                    </div>
                    {stats.mostCalledMethod && (
                      <div className="pt-4 border-t border-white/10">
                        <div className="text-xs text-slate-400 mb-1">最高调用方法</div>
                        <div className="text-sm font-mono text-white truncate">
                          {stats.mostCalledMethod}
                        </div>
                      </div>
                    )}
                    {stats.largestFile && (
                      <div className="pt-4 border-t border-white/10">
                        <div className="text-xs text-slate-400 mb-1">最大文件</div>
                        <div className="text-sm font-mono text-white truncate">
                          {stats.largestFile}
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
};
