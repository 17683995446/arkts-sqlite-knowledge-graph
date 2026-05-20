import React, { useEffect, useRef, useCallback } from 'react';
import * as PIXI from 'pixi.js';
import { GraphLayoutEngine } from '../../utils/graphLayout';
import { GraphNode, GraphEdge } from '../../types/graph';
import { getNodeColor, getNodeRadius } from '../../utils/dataLoader';
import { useGraphStore } from '../../stores/graphStore';
import { motion } from 'framer-motion';

interface GraphCanvasProps {
  nodes: GraphNode[];
  edges: GraphEdge[];
  width: number;
  height: number;
  onNodeClick?: (node: GraphNode) => void;
  onNodeHover?: (node: GraphNode | null) => void;
}

export const GraphCanvas: React.FC<GraphCanvasProps> = ({
  nodes,
  edges,
  width,
  height,
  onNodeClick,
  onNodeHover,
}) => {
  const containerRef = useRef<HTMLDivElement>(null);
  const appRef = useRef<PIXI.Application | null>(null);
  const layoutEngineRef = useRef<GraphLayoutEngine | null>(null);
  const nodeGraphicsRef = useRef<Map<string, PIXI.Graphics>>(new Map());
  const edgeGraphicsRef = useRef<PIXI.Graphics | null>(null);
  const nodeContainerRef = useRef<PIXI.Container | null>(null);
  const labelContainerRef = useRef<HTMLDivElement>(null);
  
  const { selectedNode, highlightedNodes, viewSettings } = useGraphStore();
  const { zoom, panX, panY, showLabels, showEdges, physicsEnabled } = viewSettings;

  useEffect(() => {
    if (!containerRef.current || appRef.current) return;

    const container = containerRef.current;

    const initPixi = async () => {
      try {
        const app = new PIXI.Application();
        
        await app.init({
          width,
          height,
          backgroundColor: 0x0a0e27,
          antialias: true,
          resolution: window.devicePixelRatio || 1,
          autoDensity: true,
        });

        if (container && app.canvas) {
          container.appendChild(app.canvas as HTMLCanvasElement);
        }

        appRef.current = app;

        const graphics = new PIXI.Graphics();
        app.stage.addChild(graphics);
        edgeGraphicsRef.current = graphics;

        const nodeContainer = new PIXI.Container();
        app.stage.addChild(nodeContainer);
        nodeContainerRef.current = nodeContainer;

        layoutEngineRef.current = new GraphLayoutEngine();
        layoutEngineRef.current.initialize(nodes, edges, width, height);

        if (!physicsEnabled) {
          layoutEngineRef.current.stop();
        }

        const updateGraph = () => {
          if (!appRef.current || !layoutEngineRef.current || !nodeContainerRef.current) return;

          const layoutNodes = layoutEngineRef.current.getNodes();
          const layoutEdges = layoutEngineRef.current.getEdges();

          if (edgeGraphicsRef.current) {
            edgeGraphicsRef.current.clear();
            
            if (showEdges) {
              layoutEdges.forEach((edge: any) => {
                const source = layoutNodes.find(n => n.id === edge.source);
                const target = layoutNodes.find(n => n.id === edge.target);
                
                if (source && target && source.x && source.y && target.x && target.y) {
                  const isHighlighted = 
                    highlightedNodes.has(edge.source as string) && 
                    highlightedNodes.has(edge.target as string);
                  
                  if (isHighlighted) {
                    edgeGraphicsRef.current!.lineStyle(3, 0x00d4ff, 1);
                  } else {
                    edgeGraphicsRef.current!.lineStyle(1, 0x4b5563, 0.3);
                  }
                  
                  edgeGraphicsRef.current!.moveTo(source.x, source.y);
                  
                  const curveOffset = 20;
                  
                  edgeGraphicsRef.current!.bezierCurveTo(
                    source.x + curveOffset, source.y,
                    target.x - curveOffset, target.y,
                    target.x, target.y
                  );
                }
              });
            }
          }

          layoutNodes.forEach((node: GraphNode) => {
            if (!node.x || !node.y) return;

            let graphic = nodeGraphicsRef.current.get(node.id);
            if (!graphic && nodeContainerRef.current) {
              graphic = new PIXI.Graphics();
              nodeContainerRef.current.addChild(graphic);
              nodeGraphicsRef.current.set(node.id, graphic);
              
              graphic.eventMode = 'static';
              graphic.cursor = 'pointer';
              
              graphic.on('pointerdown', () => {
                onNodeClick?.(node);
              });
              
              graphic.on('pointerover', () => {
                onNodeHover?.(node);
                document.body.style.cursor = 'pointer';
              });
              
              graphic.on('pointerout', () => {
                onNodeHover?.(null);
                document.body.style.cursor = 'default';
              });
            }

            if (graphic) {
              graphic.clear();

              const radius = getNodeRadius(node.type);
              const color = getNodeColor(node.type);
              const isSelected = selectedNode?.id === node.id;
              const isHighlighted = highlightedNodes.has(node.id);

              if (isSelected || isHighlighted) {
                graphic.beginFill(0x00d4ff, 0.3);
                graphic.drawCircle(0, 0, radius + 15);
                graphic.endFill();

                graphic.lineStyle(3, 0x00d4ff, 1);
                graphic.drawCircle(0, 0, radius + 10);
              }

              graphic.beginFill(color, isHighlighted ? 1 : 0.8);
              graphic.drawCircle(0, 0, radius);
              graphic.endFill();

              graphic.lineStyle(2, 0xffffff, 0.5);
              graphic.drawCircle(0, 0, radius);

              if (isSelected || isHighlighted) {
                graphic.beginFill(0x00d4ff, 0.8);
                graphic.drawCircle(0, -radius - 5, 5);
                graphic.endFill();
              }
            }
          });

          nodeGraphicsRef.current.forEach((graphic, id) => {
            const node = layoutNodes.find((n: any) => n.id === id);
            if (node && node.x !== undefined && node.y !== undefined) {
              graphic.x = node.x;
              graphic.y = node.y;
            }
          });
        };

        const tickerCallback = () => {
          updateGraph();
        };

        app.ticker.add(tickerCallback);

        return () => {
          app.ticker.remove(tickerCallback);
          layoutEngineRef.current?.destroy();
          app.destroy(true, { children: true });
          appRef.current = null;
          nodeGraphicsRef.current.clear();
        };
      } catch (error) {
        console.error('Failed to initialize Pixi.js:', error);
      }
    };

    initPixi();
  }, [width, height, physicsEnabled, showEdges]);

  useEffect(() => {
    if (appRef.current) {
      appRef.current.stage.scale.set(zoom);
      appRef.current.stage.position.set(panX, panY);
    }
  }, [zoom, panX, panY]);

  useEffect(() => {
    if (layoutEngineRef.current && nodes.length > 0) {
      layoutEngineRef.current.initialize(nodes, edges, width, height);
      if (!physicsEnabled) {
        layoutEngineRef.current.stop();
      }
    }
  }, [nodes, edges, physicsEnabled]);

  return (
    <div className="relative w-full h-full">
      <div 
        ref={containerRef} 
        className="w-full h-full"
        style={{ 
          background: 'radial-gradient(circle at 50% 50%, #1a1a3e 0%, #0a0e27 100%)',
        }}
      />
      
      {showLabels && (
        <div 
          ref={labelContainerRef}
          className="absolute inset-0 pointer-events-none"
          style={{ transform: `scale(${zoom}) translate(${panX}px, ${panY}px)` }}
        >
          {nodes.map((node) => (
            node.x !== undefined && node.y !== undefined && (
              <div
                key={`label-${node.id}`}
                className="absolute transform -translate-x-1/2 -translate-y-1/2 pointer-events-auto cursor-pointer"
                style={{
                  left: node.x,
                  top: node.y,
                  transform: `translate(-50%, calc(-100% - ${getNodeRadius(node.type)}px))`,
                }}
                onClick={() => onNodeClick?.(node)}
              >
                <motion.div
                  initial={{ opacity: 0, y: 10 }}
                  animate={{ opacity: 1, y: 0 }}
                  className={`
                    px-2 py-1 rounded-lg text-xs font-mono backdrop-blur-md
                    border border-white/10 shadow-lg
                    ${selectedNode?.id === node.id 
                      ? 'bg-cyan-500/40 text-cyan-300 border-cyan-500/50' 
                      : 'bg-slate-900/60 text-slate-200'}
                  `}
                >
                  {node.label}
                </motion.div>
              </div>
            )
          ))}
        </div>
      )}

      <div className="absolute bottom-4 right-4 flex gap-2">
        <div className="bg-slate-900/80 backdrop-blur-md rounded-lg p-2 border border-white/10">
          <div className="text-xs text-slate-400 mb-1">节点数</div>
          <div className="text-2xl font-bold text-cyan-400">{nodes.length}</div>
        </div>
        <div className="bg-slate-900/80 backdrop-blur-md rounded-lg p-2 border border-white/10">
          <div className="text-xs text-slate-400 mb-1">关系数</div>
          <div className="text-2xl font-bold text-purple-400">{edges.length}</div>
        </div>
      </div>

      <div className="absolute top-4 left-1/2 transform -translate-x-1/2 bg-slate-900/80 backdrop-blur-md rounded-lg px-4 py-2 border border-white/10">
        <div className="flex items-center gap-4">
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-indigo-500"></div>
            <span className="text-xs text-slate-300">文件</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-purple-500"></div>
            <span className="text-xs text-slate-300">类</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-cyan-500"></div>
            <span className="text-xs text-slate-300">方法</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-3 h-3 rounded-full bg-amber-500"></div>
            <span className="text-xs text-slate-300">组件</span>
          </div>
        </div>
      </div>
    </div>
  );
};
