class Graph {
  Map<int, List<int>> adjList = {};
  void addVertex(int vertex) {
    adjList.putIfAbsent(vertex, () => []);
  }
}
