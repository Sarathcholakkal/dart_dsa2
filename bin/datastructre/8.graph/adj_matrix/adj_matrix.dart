//! need to simplify the  node according to the need

class Graph {
  int numVertices;
  late List<List<int>> adjMatrix;

  // Constructor to initialize the adjacency matrix
  Graph(this.numVertices) {
    adjMatrix = List.generate(numVertices, (_) => List.filled(numVertices, 0));
  }

  // Method to add an edge
  void addEdge(int i, int j) {
    if (i >= 0 && i < numVertices && j >= 0 && j < numVertices) {
      adjMatrix[i][j] = 1;
      adjMatrix[j][i] = 1;
    } else {
      print("Invalid edge: ($i, $j)");
    }
  }

  // Method to add a vertex
  void addVertex() {
    numVertices++; // Increase vertex count
    List<List<int>> newAdjMatrix =
        List.generate(numVertices, (_) => List.filled(numVertices, 0));

    // Copy old adjacency matrix to new one
    for (int i = 0; i < numVertices - 1; i++) {
      for (int j = 0; j < numVertices - 1; j++) {
        newAdjMatrix[i][j] = adjMatrix[i][j];
      }
    }

    adjMatrix = newAdjMatrix;
    print("Vertex added. New number of vertices: $numVertices");
  }

  // Method to remove a vertex
  void removeVertex(int v) {
    if (v < 0 || v >= numVertices) {
      print("Invalid vertex: $v");
      return;
    }

    numVertices--; // Decrease vertex count
    List<List<int>> newAdjMatrix =
        List.generate(numVertices, (_) => List.filled(numVertices, 0));

    int newRow = 0, newCol;
    for (int i = 0; i < numVertices + 1; i++) {
      if (i == v) continue; // Skip the removed vertex
      newCol = 0;
      for (int j = 0; j < numVertices + 1; j++) {
        if (j == v) continue; // Skip the removed vertex
        newAdjMatrix[newRow][newCol] = adjMatrix[i][j];
        newCol++;
      }
      newRow++;
    }

    adjMatrix = newAdjMatrix;
    print("Vertex $v removed. New number of vertices: $numVertices");
  }

  // Method to print the adjacency matrix
  void printGraph() {
    for (var row in adjMatrix) {
      print(row);
    }
  }
}

void main() {
  Graph graph = Graph(3);
  graph.addEdge(0, 1);
  graph.addEdge(1, 2);

  print("Original Graph:");
  graph.printGraph();

  graph.addVertex();
  print("\nAfter adding a vertex:");
  graph.printGraph();

  graph.removeVertex(1);
  print("\nAfter removing vertex 1:");
  graph.printGraph();
}
