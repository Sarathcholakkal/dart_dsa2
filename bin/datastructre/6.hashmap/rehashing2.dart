class Node {
  String key;
  String value;

  Node(this.key, this.value);
}

class HashTable {
  int size = 0;
  int capacity;
  double loadFactorThreshold = 0.75;
  List<Node?> table;

  HashTable({this.capacity = 5})
      : table = List.filled(5, null); // Use capacity here

  int keyToIndex(String key) {
    return key.hashCode.abs() % capacity;
  }

  void addData(String key, String value) {
    if ((size / capacity) > loadFactorThreshold) {
      _rehashing();
    }

    int index = keyToIndex(key);
    Node newNode = Node(key, value);

    // Linear Probing for Collision Handling
    while (table[index] != null) {
      if (table[index]!.key == key) {
        table[index] = newNode;
        return;
      }
      index = (index + 1) % capacity;
    }

    table[index] = newNode;
    size++;
  }

  void _rehashing() {
    List<Node?> oldTable = table;
    capacity *= 2;
    size = 0;
    table = List.filled(capacity, null);

    for (var node in oldTable) {
      if (node != null) {
        addData(node.key, node.value);
      }
    }
  }

  void display(String key) {
    int index = keyToIndex(key);
    while (table[index] != null) {
      if (table[index]!.key == key) {
        print("Value for key '$key': ${table[index]!.value}");
        return;
      }
      index = (index + 1) % capacity;
    }
    print("No data found for key: $key");
  }
}

void main() {
  HashTable hashTable = HashTable();

  hashTable.addData("apple", "red");
  hashTable.addData("banana", "yellow");
  hashTable.addData("grape", "purple");
  hashTable.addData("cherry", "red");
  hashTable.addData("blueberry", "blue");
  hashTable.addData("jackfuit", "green");

  // Correct usage of display()
  hashTable.display("apple");
  hashTable.display("banana");
  hashTable.display("cherry");
  hashTable.display("jackfuit");
  hashTable.display("unknown_key"); // Should print "No data found"
}
