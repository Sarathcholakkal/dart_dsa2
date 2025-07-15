import 'dart:collection';

import 'package:path/path.dart';

class Graph {
  Map<int, List<int>> adjList = {};
  void addVertex(int vertex) {
    adjList.putIfAbsent(vertex, () => []);
  }

  void removeVertex(int vertex) {
    adjList.remove(vertex);
    for (var nei in adjList.values) {
      nei.remove(vertex);
    }
  }

  void addEdge(int src, int dest, {bool isDirected = true}) {
    adjList.putIfAbsent(src, () => []).add(dest);
    if (!isDirected) {
      adjList.putIfAbsent(dest, () => []).add(src);
    }
  }

  void removeEdge(int src, int dest, {bool isDirected = true}) {
    adjList[src]?.remove(dest);
    if (!isDirected) {
      adjList[dest]?.remove(src);
    }
  }

  void bfsIterative(int startvertex) {
    Queue<int> queue = Queue();
    Set<int> visited = {};
    queue.add(startvertex);
    visited.add(startvertex);
    while (queue.isNotEmpty) {
      int current = queue.removeFirst();
      print(current);
      for (var nei in adjList[current] ?? []) {
        if (!visited.contains(nei)) {
          queue.add(nei);
          visited.add(nei);
        }
      }
    }
  }
}

void main() {
  Graph gr = Graph();
  for (int i = 1; i <= 5; i++) {
    gr.addVertex(i);
  }
  gr.addEdge(1, 3);
  gr.addEdge(1, 4);
  gr.addEdge(2, 3);
  gr.bfsIterative(1);
}
