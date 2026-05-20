import { forceSimulation, forceLink, forceManyBody, forceCenter, forceCollide } from 'd3-force';
import { GraphNode, GraphEdge } from '../types/graph';

export class GraphLayoutEngine {
  private simulation: any = null;
  private nodes: GraphNode[] = [];
  private edges: GraphEdge[] = [];

  initialize(nodes: GraphNode[], edges: GraphEdge[], width: number, height: number) {
    this.nodes = nodes.map(n => ({ ...n }));
    this.edges = edges.map(e => ({
      ...e,
      source: typeof e.source === 'string' ? e.source : e.source.id,
      target: typeof e.target === 'string' ? e.target : e.target.id,
    }));

    this.simulation = forceSimulation(this.nodes)
      .force('charge', forceManyBody().strength(-300))
      .force('center', forceCenter(width / 2, height / 2))
      .force('collision', forceCollide().radius(50))
      .force('link', forceLink(this.edges)
        .id((d: any) => d.id)
        .distance(100)
        .strength(0.5))
      .alphaDecay(0.02)
      .velocityDecay(0.4);

    return this;
  }

  tick() {
    if (this.simulation) {
      this.simulation.tick();
    }
    return this.nodes;
  }

  stop() {
    if (this.simulation) {
      this.simulation.stop();
    }
  }

  updatePositions() {
    if (this.simulation) {
      this.simulation.alpha(0.3).restart();
    }
  }

  dragstarted(node: GraphNode) {
    if (!this.simulation) return;
    if (!node.x || !node.y) return;
    if (!node.fx) node.fx = node.x;
    if (!node.fy) node.fy = node.y;
    if (this.simulation.alphaTarget) {
      this.simulation.alphaTarget(0.3).restart();
    }
  }

  dragged(node: GraphNode, x: number, y: number) {
    node.fx = x;
    node.fy = y;
  }

  dragended(node: GraphNode) {
    if (!this.simulation) return;
    node.fx = null;
    node.fy = null;
    if (this.simulation.alphaTarget) {
      this.simulation.alphaTarget(0);
    }
  }

  getNodes() {
    return this.nodes;
  }

  getEdges() {
    return this.edges;
  }

  destroy() {
    this.stop();
    this.simulation = null;
    this.nodes = [];
    this.edges = [];
  }
}
