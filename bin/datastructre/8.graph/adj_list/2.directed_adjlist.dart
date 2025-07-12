import 'dart:collection';

class Graph {
  Map<int, List<int>> adjList = {};

  // Add a vertex to the graph
  void addVertex(int vertex) {
    adjList.putIfAbsent(vertex, () => []);
  }

  // Remove a vertex and all its connections
  void removeVertex(int vertex) {
    adjList.remove(vertex);
    for (var neighbors in adjList.values) {
      neighbors.remove(vertex);
    }
  }

  // Add an edge between two vertices
  void addEdge(int src, int dest, {bool isDirected = true}) {
    adjList.putIfAbsent(src, () => []).add(dest);

    if (!isDirected) {
      adjList.putIfAbsent(dest, () => []).add(src);
    }
  }

  // Remove an edge between two vertices
  void removeEdge(int src, int dest, {bool isDirected = true}) {
    adjList[src]?.remove(dest);

    if (!isDirected) {
      adjList[dest]?.remove(src);
    }
  }

  // Depth-First Search (Iterative)
  void dfsIterative(int startVertex) {
    List<int> stack = [];
    Set<int> visited = {};

    stack.add(startVertex);
    while (stack.isNotEmpty) {
      int currentVertex = stack.removeLast();

      if (!visited.contains(currentVertex)) {
        print(currentVertex);
        visited.add(currentVertex);

        for (var neighbor in adjList[currentVertex] ?? []) {
          if (!visited.contains(neighbor)) {
            stack.add(neighbor);
          }
        }
      }
    }
  }

  void dfsRecursive(int currentVertex, Set<int> visited) {
    if (visited.contains(currentVertex)) return;

    print(currentVertex); // Visit the node
    visited.add(currentVertex);

    for (var neighbor in adjList[currentVertex] ?? []) {
      if (!visited.contains(neighbor)) {
        dfsRecursive(neighbor, visited);
      }
    }
  }

  // Breadth-First Search (Iterative)
  void bfsIterative(int startVertex) {
    Queue<int> queue = Queue();
    Set<int> visited = {};

    queue.add(startVertex);
    visited.add(startVertex);

    while (queue.isNotEmpty) {
      int currentVertex = queue.removeFirst();
      print(currentVertex);

      for (var neighbor in adjList[currentVertex] ?? []) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }

  void startBfsRecursive(int startVertex) {
    Queue<int> queue = Queue();
    Set<int> visited = {};

    visited.add(startVertex);
    queue.add(startVertex);

    bfsRecursive(queue, visited);
  }

  void bfsRecursive(Queue<int> queue, Set<int> visited) {
    if (queue.isEmpty) return;

    int currentVertex = queue.removeFirst();
    print(currentVertex);

    for (var neighbor in adjList[currentVertex] ?? []) {
      if (!visited.contains(neighbor)) {
        visited.add(neighbor);
        queue.add(neighbor);
      }
    }

    // Recurse with updated queue
    bfsRecursive(queue, visited);
  }

  // Display the graph as an adjacency list
  void display() {
    for (var vertex in adjList.keys) {
      print("$vertex: ${adjList[vertex]}");
    }
  }
}

void main() {
  Graph graph = Graph();

  // Add vertices
  for (int i = 0; i <= 5; i++) {
    graph.addVertex(i);
  }

  // Add edges (undirected for example)
  graph.addEdge(1, 2, isDirected: false);
  graph.addEdge(1, 3, isDirected: false);
  graph.addEdge(2, 4, isDirected: false);
  graph.addEdge(3, 5, isDirected: false);

  // Display graph
  print("Graph structure:");
  graph.display();

  // DFS Traversal
  print("\nDFS starting from vertex 1:iterative");
  graph.dfsIterative(1);
  print("\nDFS starting from vertex 1:recursive");
  graph.dfsRecursive(1, {});

  // BFS Traversal
  print("\nBFS starting from vertex  iterative1:");
  graph.bfsIterative(1);
  print("\nBFS starting from vertex  recursive:");
  graph.bfsRecursive(Queue(), {});

  // Remove an edge and show updated graph
  print("\nRemoving edge between 1 and 3:");
  graph.removeEdge(1, 3, isDirected: false);
  graph.display();

  // Remove a vertex and show updated graph
  print("\nRemoving vertex 2:");
  graph.removeVertex(2);
  graph.display();
}
