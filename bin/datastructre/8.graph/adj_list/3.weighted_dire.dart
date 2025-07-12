class GraphEdge {
  final int source;
  final int destination;
  final int weight;

  GraphEdge(this.source, this.destination, this.weight);
}

class WeightedGraph {
  final int vertices;
  late List<List<GraphEdge>> adjacencyList;

  WeightedGraph(this.vertices) {
    adjacencyList = List.generate(vertices, (_) => []);
  }

  void addDirectedEdge(int source, int destination, int weight) {
    final edge = GraphEdge(source, destination, weight);
    adjacencyList[source].add(edge);
  }

  void addUndirectedEdge(int source, int destination, int weight) {
    final edge1 = GraphEdge(source, destination, weight);
    final edge2 = GraphEdge(destination, source, weight);
    adjacencyList[source].add(edge1);
    adjacencyList[destination].add(edge2);
  }

  void removeDirectedEdge(int source, int destination) {
    adjacencyList[source]
        .removeWhere((edge) => edge.destination == destination);
  }

  void removeUndirectedEdge(int source, int destination) {
    removeDirectedEdge(source, destination);
    removeDirectedEdge(destination, source);
  }

  List<List<GraphEdge>> getVertices() {
    return adjacencyList;
  }

  void printGraph() {
    for (int i = 0; i < adjacencyList.length; i++) {
      print("Vertex $i is connected to: ");
      for (final edge in adjacencyList[i]) {
        print("  -> ${edge.destination} (weight: ${edge.weight})");
      }
    }
  }
}

void main() {
  // Same graph structure as your Java example
  final graph = WeightedGraph(5);
  graph.addUndirectedEdge(0, 1, 4);
  graph.addUndirectedEdge(0, 4, 6);
  graph.addUndirectedEdge(1, 4, 1);
  graph.addUndirectedEdge(1, 3, 7);
  graph.addUndirectedEdge(4, 2, 8);

  graph.printGraph();
}
