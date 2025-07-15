class Node {
  int data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoubleLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void insertAfter(int target, int data) {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == target) {
        Node newNode = Node(data);
        newNode.prev = temp;
        newNode.next = temp.next;
        if (temp.next != null) {
          temp.next!.prev = newNode;
        } else {
          tail = newNode; // if inserted at the end
        }
        temp.next = newNode;
        return;
      }
      temp = temp.next;
    }
    print("Node with value $target not found.");
  }

  void insertBefore(int target, int data) {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == target) {
        Node newNode = Node(data);
        newNode.next = temp;
        newNode.prev = temp.prev;
        if (temp.prev != null) {
          temp.prev!.next = newNode;
        } else {
          head = newNode; // if inserted at the beginning
        }
        temp.prev = newNode;
        return;
      }
      temp = temp.next;
    }
    print("Node with value $target not found.");
  }

  void delete(int data) {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == data) {
        if (temp == head) {
          head = head?.next;
          head?.prev = null;
        } else if (temp == tail) {
          tail = tail?.prev;
          tail?.next = null;
        } else {
          temp.prev?.next = temp.next;
          temp.next?.prev = temp.prev;
        }
        return;
      }
      temp = temp.next;
    }
    print("Node with value $data not found.");
  }

  void displayForward() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayBackward() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
}

void main() {
  DoubleLinkedList dll = DoubleLinkedList();

  dll.addNode(10);
  dll.addNode(20);
  dll.addNode(30);
  dll.insertAfter(20, 25); // Inserts 25 after 20
  dll.insertBefore(10, 5); // Inserts 5 before 10

  print("Forward:");
  dll.displayForward();

  print("Backward:");
  dll.displayBackward();
}
