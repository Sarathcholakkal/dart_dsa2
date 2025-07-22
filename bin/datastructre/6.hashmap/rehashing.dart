class SimpleHashTable {
  int capacity;
  int size = 0;
  List<int?> table;

  // Constructor
  SimpleHashTable({this.capacity = 5}) : table = List.filled(5, null);

  // Hash function
  int _hash(int key) {
    return key % capacity;
  }

  // Insert function with rehashing
  void insert(int key) {
    if (size / capacity > 0.7) {
      _rehash();
    }

    int index = _hash(key);

    // Linear probing for collision handling
    while (table[index] != null) {
      index = (index + 1) % capacity;
    }

    table[index] = key;
    size++;
  }

  // Rehashing function: Expand table and reinsert values
  void _rehash() {
    print("Rehashing...");
    List<int?> oldTable = table;
    capacity *= 2; // Double the table size
    size = 0;
    table = List.filled(capacity, null);

    for (var key in oldTable) {
      if (key != null) {
        insert(key);
      }
    }
  }

  // Display the hash table
  void display() {
    print("Hash Table: $table");
  }
}

void main() {
  SimpleHashTable hashTable = SimpleHashTable();

  hashTable.insert(10);
  hashTable.insert(20);
  hashTable.insert(30);
  hashTable.insert(40); // Triggers rehashing when load factor exceeds 70%

  hashTable.display();
}
