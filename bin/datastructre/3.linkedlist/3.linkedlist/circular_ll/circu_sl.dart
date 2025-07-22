class Node {
  int data;
  Node? next;

  Node(this.data);
}

class CircularSinglyLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
      tail!.next = head; // Circular link
    } else {
      tail!.next = newNode;
      tail = newNode;
      tail!.next = head; // Keep circular link
    }
  }

  void display() {
    if (head == null) {
      print("List is empty");
      return;
    }

    Node? ptr = head;
    do {
      print(ptr!.data);
      ptr = ptr.next;
    } while (ptr != head);
  }

  void delete(int data) {
    if (head == null) return;

    // Deleting head
    if (head!.data == data) {
      if (head == tail) {
        // Only one node
        head = null;
        tail = null;
        return;
      } else {
        head = head!.next;
        tail!.next = head;
        return;
      }
    }

    // Deleting from middle or tail
    Node? ptr = head;
    Node? prev;

    do {
      prev = ptr;
      ptr = ptr!.next;
    } while (ptr != head && ptr!.data != data);

    if (ptr == null || ptr == head) return; // Not found or came full circle

    prev!.next = ptr.next;
    if (ptr == tail) {
      tail = prev;
    }
  }

  void insertAfter(int nextTo, int data) {
    if (head == null) return;

    Node newNode = Node(data);
    Node? ptr = head;

    do {
      if (ptr!.data == nextTo) {
        newNode.next = ptr.next;
        ptr.next = newNode;
        if (ptr == tail) {
          tail = newNode;
        }
        return;
      }
      ptr = ptr.next;
    } while (ptr != head);
  }
}

void main() {
  CircularSinglyLinkedList list = CircularSinglyLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);

  print("Original Circular List:");
  list.display();

  list.delete(30);
  print("After deleting 30:");
  list.display();

  list.delete(10);
  print("After deleting head (10):");
  list.display();

  list.delete(40);
  print("After deleting tail (40):");
  list.display();

  list.delete(20);
  print("After deleting last remaining node (20):");
  list.display();

  list.insertAfter(10, 15); // Will not insert as list is empty
  list.display();
}
