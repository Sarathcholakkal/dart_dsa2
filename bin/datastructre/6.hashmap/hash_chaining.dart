class Node {
  String value;
  String key;
  Node? next;
  Node(this.key, this.value);
}

class ChiningHashing {
  int size;
  late List<Node?> table;
  ChiningHashing(this.size) {
    table = List.filled(size, null);
  }
  int convertIdx(String key) {
    int idx = key.hashCode.abs() % size;
    return idx;
  }

  void addData(String key, String value) {
    Node newNode = Node(key, value);
    int idx = convertIdx(key);
    if (table[idx] == null) {
      table[idx] = newNode;
    } else {
      newNode.next = table[idx];
      table[idx] = newNode;
    }
  }

  void display(String key) {
    int idx = convertIdx(key);
    if (table[idx] == null) return;
    Node? temp = table[idx];
    while (temp != null) {
      if (temp.key == key) {
        print(temp.value);
        return;
      } else {
        temp = temp.next;
      }
    }
    if (temp == null) {
      print("value note there");
    }
  }
}

void main() {
  ChiningHashing c = ChiningHashing(2);
  c.addData("name", "Sinan");
  c.addData("age", "21");
  c.addData("place", "mannarkkad");

  c.display("name");
  c.display("age");
  c.display("place");
}
