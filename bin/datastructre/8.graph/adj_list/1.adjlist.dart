import 'dart:collection';

class AdjList {
  Map<int, List<int>> adjlist;
  AdjList() : adjlist = {};

  void addVertex(int vertex) {
    adjlist[vertex] = [];
  }

  void addEdge(int source, int dest) {
    adjlist[source]?.add(dest);
    adjlist[dest]?.add(source);
  }

  void removevertex(int vertex) {
    adjlist.remove(vertex);
    for (var neibr in adjlist.values) {
      neibr.remove(vertex);
    }
  }

  void removeEdge(int source, int dest) {
    adjlist[source]?.remove(dest);
    adjlist[dest]?.remove(source);
  }

  //! bfs iterative

  void Bfsiterative(int startvertex) {
    Queue<int> queue = Queue();
    Set<int> visited = {};

    queue.add(startvertex);
    visited.add(startvertex);
    while (queue.isNotEmpty) {
      final curr = queue.removeFirst();

      print(curr);

      for (var neibr in adjlist[curr] ?? []) {
        if (!visited.contains(neibr)) {
          visited.add(neibr);
          queue.add(neibr);
        }
      }
    }
  }
  //! need to add bfs recursive

  //! dfs Iterative

  void dfsIterative(int startVertex) {
    final visited = <int>{};
    final stack = <int>[];

    stack.add(startVertex);

    while (stack.isNotEmpty) {
      final currentVertex = stack.removeLast();
      if (!visited.contains(currentVertex)) {
        print(currentVertex);
        visited.add(currentVertex);

        for (var neighbor in adjlist[currentVertex] ?? []) {
          if (!visited.contains(neighbor)) {
            stack.add(neighbor);
          }
        }
      }
    }
  }

  //! dfs recursive

  void dfs(int startVertex) {
    final visited = <int>{};
    _dfsRecursive(startVertex, visited);
  }

  void _dfsRecursive(int vertex, Set<int> visited) {
    visited.add(vertex);
    print(vertex);

    for (var neighbor in adjlist[vertex] ?? []) {
      if (!visited.contains(neighbor)) {
        _dfsRecursive(neighbor, visited);
      }
    }
  }

  void displaygraph() {
    adjlist.forEach((key, value) => print("$key:$value"));
  }
}

void main() {
  final graph = AdjList();

  // Adding vertices
  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);

  // Adding edges
  graph.addEdge(1, 2);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(4, 1);

  // Displaying the graph
  print("Graph:");
  graph.displaygraph();

  // BFS Traversal
  print("\nBFS Traversal:");
  graph.Bfsiterative(1);
  // DFS Iterative Traversal
  print("\nDFS Iterative Traversal:");
  graph.dfsIterative(1);

  // DFS Recursive Traversal
  print("\nDFS Recursive Traversal:");
  graph.dfs(1);
}
