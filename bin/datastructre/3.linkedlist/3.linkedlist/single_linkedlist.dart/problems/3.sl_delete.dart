class Node {
  int value;
  Node? next;
  Node(this.value);
}

class SlDelete {
  Node? head;

  void insertAtEnd(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? temp = head;
    while (temp!.next != null) {
      temp = temp.next;
    }
    temp.next = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }

  //! delete from head

  Node? deleteFromBegning(Node? head) {
    head = head!.next;
    return head;
  }

  //! delete from end

  Node? deletefromEnd(Node? head) {
    Node? ptr = head;
    while (ptr!.next!.next != null) {
      ptr = ptr.next;
    }
    ptr.next = null;
    return head;
  }

  //! delete from middle

  Node deleteFromMiddle(Node head, int position) {
    Node? ptr = head;
    for (int i = 0; i < position - 1; i++) {
      ptr = ptr!.next;
    }
    Node? nodetodelete = ptr!.next;
    Node? nextnode = nodetodelete!.next;

    ptr.next = nextnode;

    return head;
  }

  //! workout multiple node delete once

  void main() {
    SlDelete list = SlDelete();
    for (int i = 1; i <= 10; i++) {
      list.insertAtEnd(i);
    }
    list.display(); // Output: 1, 2, 3, ..., 10
  }
}
