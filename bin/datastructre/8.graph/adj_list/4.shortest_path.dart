// import 'dart:collection';
// import 'dart:math';

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

// List<int> dijkstraShortestPath(WeightedGraph graph, int source) {
//   final Map<int, int> distance = {};
//   final Set<int> visited = {};
//   final priorityQueue =
//       PriorityQueue<GraphEdge>((a, b) => a.weight.compareTo(b.weight));

//   for (int vertex in graph.allVertices) {
//     distance[vertex] = double.infinity.toInt();
//   }

//   distance[source] = 0;
//   priorityQueue.add(GraphEdge(source, source, 0));

//   while (priorityQueue.isNotEmpty) {
//     final currentEdge = priorityQueue.removeFirst();
//     final u = currentEdge.destination;

//     if (visited.contains(u)) continue;
//     visited.add(u);

//     for (GraphEdge edge in graph.getEdges(u)) {
//       int v = edge.destination;
//       int weight = edge.weight;
//       int newDist = distance[u]! + weight;

//       if (newDist < distance[v]!) {
//         distance[v] = newDist;
//         priorityQueue.add(GraphEdge(u, v, newDist));
//       }
//     }
//   }

//   // Convert distances to a list for output consistency
//   final maxIndex = graph.allVertices.reduce(max);
//   List<int> result = List.filled(maxIndex + 1, -1);
//   for (var entry in distance.entries) {
//     result[entry.key] = entry.value;
//   }

//   return result;
// }

// void main() {
//   final graph = WeightedGraph();

//   graph.addDirectedEdge(0, 1, 4);
//   graph.addDirectedEdge(0, 2, 1);
//   graph.addDirectedEdge(2, 1, 2);
//   graph.addDirectedEdge(1, 3, 1);
//   graph.addDirectedEdge(2, 3, 5);

//   final distances = dijkstraShortestPath(graph, 0);

//   for (int i = 0; i < distances.length; i++) {
//     if (distances[i] != -1) {
//       print('Distance from 0 to $i = ${distances[i]}');
//     }
//   }
// }
