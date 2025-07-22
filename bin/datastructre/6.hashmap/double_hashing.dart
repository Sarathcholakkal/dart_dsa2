class Node {
  String key;
  String value;
  Node(this.key, this.value);
}

class DoubleHashing {
  int size;
  late List<Node?> table;

  DoubleHashing(this.size) {
    table = List.filled(size, null);
  }

  int keyToIndex(String key) {
    return key.hashCode.abs() % size;
  }

  int keyToSecondaryIndex(String key) {
    return (1 + key.hashCode.abs() % (size - 1)); // Secondary hash function
  }

  void addData(String key, String value) {
    Node newNode = Node(key, value);
    int index = keyToIndex(key);
    int secondaryIndex = keyToSecondaryIndex(key);
    int originalIndex = index;
    int attempts = 0;

    while (table[index] != null) {
      if (table[index]!.key == key) {
        table[index] = newNode; // Update if key already exists
        return;
      }

      index = (index + secondaryIndex) % size;
      attempts++;

      if (index == originalIndex || attempts >= size) {
        print("Hash Table is full, cannot insert '$key'");
        return;
      }
    }

    table[index] = newNode; // Insert new node in empty slot
  }

  void display(String key) {
    int index = keyToIndex(key);
    int secondaryIndex = keyToSecondaryIndex(key);
    int originalIndex = index;
    int attempts = 0;

    while (table[index] != null) {
      if (table[index]!.key == key) {
        print("Value found: ${table[index]!.value}");
        return;
      }

      index = (index + secondaryIndex) % size;
      attempts++;

      if (index == originalIndex || attempts >= size) {
        break;
      }
    }

    print("No value found against key: $key");
  }
}

void main() {
  DoubleHashing hashtable = DoubleHashing(5);
  hashtable.addData('apple', 'red');
  hashtable.addData('banana', 'yellow');
  hashtable.addData('grape', 'purple');
  hashtable.addData('melon', 'green');
  hashtable.addData('orange', 'orange');
  hashtable.addData('peach', 'pink'); // Should print "Hash Table is full"

  hashtable.display('apple'); // red
  hashtable.display('banana'); // yellow
  hashtable.display('grape'); // purple
  hashtable.display('melon'); // green
  hashtable.display('orange'); // orange
  hashtable.display('peach'); // No value found
}
