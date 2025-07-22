class Node {
  String key;
  String value;
  Node(this.key, this.value);
}

class LinearProbing {
  int size;
  late List<Node?> table;

  LinearProbing(this.size) {
    table = List.filled(size, null);
  }

  int keyToIndex(String key) {
    return key.hashCode.abs() % size;
  }

  void addData(String key, String value) {
    Node newNode = Node(key, value);
    int index = keyToIndex(key);
    int originalIndex = index;

    while (table[index] != null) {
      if (table[index]!.key == key) {
        table[index] = newNode; // Update existing key
        return;
      }

      index = (index + 1) % size; // Linear probing
      if (index == originalIndex) {
        print("Hash Table is full, can't insert $key");
        return;
      }
    }

    table[index] = newNode; // Insert new node in empty slot
  }

  void display(String key) {
    int index = keyToIndex(key);
    int originalIndex = index;

    while (table[index] != null) {
      if (table[index]!.key == key) {
        print(table[index]!.value);
        return;
      }

      index = (index + 1) % size; // Linear probing
      if (index == originalIndex) {
        break; // If we've looped back, key not found
      }
    }

    print("No data found for key: $key");
  }
}

void main() {
  LinearProbing hashtable = LinearProbing(3);
  hashtable.addData('hello', 'Radika');
  hashtable.addData('hai', 'Hima');
  hashtable.addData('hey', 'Jeslin');
  hashtable.addData('haa', 'Sivapriya'); // Should print "Hash Table is full"

  hashtable.display('hello'); // Radika
  hashtable.display('hai'); // Hima
  hashtable.display('hey'); // Jeslin
  hashtable.display('haa'); // No data found
}
