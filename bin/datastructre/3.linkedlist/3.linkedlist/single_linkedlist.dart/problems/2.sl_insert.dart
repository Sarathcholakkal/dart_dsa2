class Node {
  int value;
  Node? next;
  Node(this.value);
}

class SinglyLinkedList {
  Node? head;
//! insert at beginning
  void insertAtBeginning(int valueToInsert) {
    Node newNode = Node(valueToInsert);
    newNode.next = head;
    head = newNode;
  }

  //! insert at middle

  Node insertAtEnd(Node head, int valuetoinsert) {
    Node newnode = Node(valuetoinsert);
    Node? ptr =
        head; // if head is null we use insert at beginning so initlal ptr will not be null
    while (ptr!.next != null) {
      ptr = ptr.next;
    }
    ptr.next = newnode;
    return head;
  }

  //! at  specified position middle
  //? if need to correct index  ,must start with i as 1  ,consider head position 0

  Node? insertAtMiddle(Node? head, int position, int valuetoinsert) {
    Node newnode = Node(valuetoinsert);
    Node? ptr = head;
    for (int i = 1; i < position; i++) {
      ptr = ptr!.next;
    }
    newnode.next = ptr!.next;
    ptr.next = newnode;
    return head;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }
}

void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.insertAtBeginning(10);
  list.insertAtBeginning(20);
  list.insertAtBeginning(30);
  list.insertAtMiddle(list.head, 2, 55);
  list.display(); // Output: 30, 20, 10
}
