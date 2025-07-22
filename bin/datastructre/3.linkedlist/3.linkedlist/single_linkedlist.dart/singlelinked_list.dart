class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SlinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = head;
    } else {
      tail!.next = newNode;
      tail = tail!.next;
    }
  }

  void display() {
    if (head == null) {
      print("empty");
      return;
    }
    Node? ptr = head;
    while (ptr != null) {
      print(ptr.data);
      ptr = ptr.next;
    }
  }

  //! deletions.............
  void delete(int data) {
    if (head == null) return;

    //? begnning
    if (head!.data == data) {
      head = head!.next;
      if (head == null) {
        tail = null; // Update tail if list becomes empty
      }
      return;
    }

    //? middle and end

    Node? ptr = head;
    Node? prev;

    while (ptr != null && ptr.data != data) {
      prev = ptr;
      ptr = ptr.next;
    }

    // If node was not found
    if (ptr == null) return;

    // If tail node is to be deleted
    if (ptr == tail) {
      tail = prev;
      tail!.next = null;
      return;
    }

    // Unlink the node
    prev!.next = ptr.next;
  }

  void inserAfter(int nextTo, int data) {
    //! nextto is insert position
    Node? newNode = Node(data);
    Node? ptr = head;
    while (ptr != null && ptr.data != nextTo) {
      ptr = ptr.next;
    }
    if (ptr == null) {
      return;
    }
    if (ptr == tail) {
      tail!.next = newNode;
      tail = tail!.next;
      return;
    }
    newNode.next = ptr.next;
    ptr.next = newNode;
  }
}

void main() {
  SlinkedList list = SlinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);

  print("Original List:");
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
  list.inserAfter(10, 15);
  list.display();
}
