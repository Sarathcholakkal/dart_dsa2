class Node {
  int data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class CircularDoubleLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
      head!.next = head;
      head!.prev = head;
    } else {
      newNode.prev = tail;
      newNode.next = head;
      tail!.next = newNode;
      head!.prev = newNode;
      tail = newNode;
    }
  }

  void insertAfter(int target, int data) {
    if (head == null) return;

    Node? temp = head;
    do {
      if (temp!.data == target) {
        Node newNode = Node(data);
        newNode.prev = temp;
        newNode.next = temp.next;
        temp.next!.prev = newNode;
        temp.next = newNode;
        if (temp == tail) tail = newNode;
        return;
      }
      temp = temp.next;
    } while (temp != head);

    print("Node with value $target not found.");
  }

  void insertBefore(int target, int data) {
    if (head == null) return;

    Node? temp = head;
    do {
      if (temp!.data == target) {
        Node newNode = Node(data);
        newNode.next = temp;
        newNode.prev = temp.prev;
        temp.prev!.next = newNode;
        temp.prev = newNode;
        if (temp == head) head = newNode;
        return;
      }
      temp = temp.next;
    } while (temp != head);

    print("Node with value $target not found.");
  }

  void delete(int data) {
    if (head == null) return;

    Node? temp = head;
    do {
      if (temp!.data == data) {
        if (temp == head && temp == tail) {
          head = null;
          tail = null;
        } else {
          temp.prev!.next = temp.next;
          temp.next!.prev = temp.prev;
          if (temp == head) head = temp.next;
          if (temp == tail) tail = temp.prev;
        }
        return;
      }
      temp = temp.next;
    } while (temp != head);

    print("Node with value $data not found.");
  }

  void displayForward() {
    if (head == null) return;

    Node? temp = head;
    do {
      print(temp!.data);
      temp = temp.next;
    } while (temp != head);
  }

  void displayBackward() {
    if (tail == null) return;

    Node? temp = tail;
    do {
      print(temp!.data);
      temp = temp.prev;
    } while (temp != tail);
  }
}

void main() {
  CircularDoubleLinkedList cdll = CircularDoubleLinkedList();

  cdll.addNode(10);
  cdll.addNode(20);
  cdll.addNode(30);
  cdll.insertAfter(20, 25); // Insert 25 after 20
  cdll.insertBefore(10, 5); // Insert 5 before 10

  print("Forward:");
  cdll.displayForward();

  print("Backward:");
  cdll.displayBackward();
}
