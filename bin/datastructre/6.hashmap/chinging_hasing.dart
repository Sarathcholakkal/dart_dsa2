// class Node {
//   String key;
//   String value;
//   Node? next;
//   Node(this.key, this.value);
// }

// class HashTable {
//   int size;
//   late List<Node?> table;
//   HashTable(this.size) {
//     table = List.filled(size, null);
//   }
//   int keyToindex(String key) {
//     int index = key.hashCode.abs() % size;
//     return index;
//   }

//   void addData(String key, String value) {
//     Node newNode = Node(key, value);
//     int index = keyToindex(key);

//     if (table[index] == null) {
//       table[index] = newNode;
//     } else {
//       newNode.next = table[index];
//       table[index] = newNode;
//     }
//   }

//   void display(String key) {
//     int index = keyToindex(key);
//     if (table[index] == null) return;

//     Node? temp = table[index];

//     while (temp != null) {
//       if (temp.key == key) {
//         print(temp.value);
//         return;
//       } else {
//         temp = temp.next;
//       }
//     }

//     if (temp == null) {
//       print("the value not found");
//     }
//   }
// }

// void main() {
//   HashTable newMap = HashTable(2);
//   newMap.addData('name', 'hema');
//   newMap.addData('profession', 'develper');
//   newMap.addData('homename', 'cholakkal');
//   newMap.addData('status', 'single');
//   newMap.display('name');
//   newMap.display('age');
//   newMap.display('profession');
//   newMap.display('homename');
// }

void main() {
  HashTable newMap = HashTable(2);
  newMap.addData('name', 'hema');
  newMap.addData('profession', 'develper');
  newMap.addData('homename', 'cholakkal');
  newMap.addData('status', 'single');
  newMap.display('name');
  newMap.display('age');
  newMap.display('profession');
  newMap.display('homename');
}

class Node {
  String key;
  String value;
  Node? next;

  Node(this.key, this.value);
}

class HashTable {
  int size;
  late List<Node?> table;

  HashTable(this.size) {
    table = List.filled(size, null);
  }

  int keytoindex(String key) {
    int index = key.hashCode.abs() % size;
    return index;
  }

  void addData(String key, String value) {
    Node newnode = Node(key, value);

    int index = keytoindex(key);

    if (table[index] == null) {
      table[index] = newnode;
    } else {
      newnode.next = table[index];
      table[index] = newnode;
    }
  }

  void display(String key) {
    int index = keytoindex(key);

    if (table[index] == null) return;

    Node? temp = table[index];
    while (temp != null) {
      if (temp.key == key) {
        print(temp.value);
        return;
      } else {
        temp = temp.next;
      }
    }
    if (temp == null) {
      print("no data found");
      return;
    }
  }
}
