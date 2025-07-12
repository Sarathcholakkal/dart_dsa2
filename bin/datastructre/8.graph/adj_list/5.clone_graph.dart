// import 'dart:collection';

// class GraphEdge {
//   final int source;
//   final int destination;
//   final int weight;

//   GraphEdge(this.source, this.destination, this.weight);
// }

// class WeightedGraph {
//   final Map<int, List<GraphEdge>> adjacencyList = {};

//   void addVertex(int vertex) {
//     adjacencyList.putIfAbsent(vertex, () => []);
//   }

//   void addDirectedEdge(int source, int destination, int weight) {
//     addVertex(source);
//     addVertex(destination);
//     adjacencyList[source]!.add(GraphEdge(source, destination, weight));
//   }

//   List<GraphEdge> getEdges(int vertex) => adjacencyList[vertex] ?? [];

//   List<int> get allVertices => adjacencyList.keys.toList();
// }

// // ✅ Clone graph logic
// WeightedGraph cloneGraph(WeightedGraph original) {
//   final WeightedGraph clonedGraph = WeightedGraph();

//   for (var vertex in original.adjacencyList.keys) {
//     clonedGraph.addVertex(vertex);
//     for (var edge in original.adjacencyList[vertex]!) {
//       clonedGraph.addDirectedEdge(edge.source, edge.destination, edge.weight);
//     }
//   }

//   return clonedGraph;
// }

// // ✅ Example usage
// void main() {
//   WeightedGraph graph = WeightedGraph();
//   graph.addDirectedEdge(0, 1, 4);
//   graph.addDirectedEdge(0, 4, 6);
//   graph.addDirectedEdge(1, 4, 1);
//   graph.addDirectedEdge(1, 3, 7);
//   graph.addDirectedEdge(4, 2, 8);

//   WeightedGraph cloned = cloneGraph(graph);

//   print("Original Graph:");
//   printGraph(graph);

//   print("\nCloned Graph:");
//   printGraph(cloned);
// }

// // ✅ Helper function to print graph
// void printGraph(WeightedGraph graph) {
//   for (var vertex in graph.adjacencyList.keys) {
//     print("Vertex $vertex is connected to:");
//     for (var edge in graph.adjacencyList[vertex]!) {
//       print("  → ${edge.destination} (weight: ${edge.weight})");
//     }
//   }
// }
