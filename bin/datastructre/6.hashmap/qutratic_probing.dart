class Node {
  String key;
  String value;
  Node(this.key, this.value);
}

class QuadraticProbing {
  int size;
  late List<Node?> table;

  QuadraticProbing(this.size) {
    table = List.filled(size, null);
  }

  int keyToIndex(String key) {
    return key.hashCode.abs() % size;
  }

  void addData(String key, String value) {
    Node newNode = Node(key, value);
    int index = keyToIndex(key);
    int originalIndex = index;
    int i = 1;

    while (table[index] != null) {
      if (table[index]!.key == key) {
        table[index] = newNode; // Update existing key
        return;
      }

      index = (originalIndex + (i * i)) % size; // Quadratic Probing
      i++;

      if (index == originalIndex) {
        // Full table condition
        print("Hash Table is full, can't insert $key");
        return;
      }
    }

    table[index] = newNode; // Assign new node at found empty spot
  }

  void display(String key) {
    int index = keyToIndex(key);
    int originalIndex = index;
    int i = 1;

    while (table[index] != null) {
      if (table[index]!.key == key) {
        print(table[index]!.value);
        return;
      }

      index = (originalIndex + (i * i)) % size;
      i++;

      if (index == originalIndex) {
        break; // If we've looped back, break out
      }
    }

    print("No data found for key: $key");
  }
}

void main() {
  QuadraticProbing qp = QuadraticProbing(5);
  qp.addData("name", "Sinan");
  qp.addData("age", "21");
  qp.addData("city", "Mannarkkad");
  qp.addData("country", "India");
  qp.addData("language", "Dart");
  qp.addData("extra", "This won't be inserted"); // Hash table full

  qp.display("name"); // Sinan
  qp.display("age"); // 21
  qp.display("city"); // Mannarkkad
  qp.display("unknown"); // No data found
}
