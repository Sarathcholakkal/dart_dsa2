void main() {
  Stack newStack = Stack();
  newStack.push(1);
  newStack.push(2);
  newStack.push(3);
  newStack.push(4);
  newStack.push(5);
  newStack.display();

  print("\nDeleting 3...");
  newStack.deleteNode(3);
  newStack.display();

  print("\nDeleting 5...");
  newStack.deleteNode(5);
  newStack.display();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? head;
  void push(int data) {
    Node newnode = Node(data);
    newnode.next = head;
    head = newnode;
  }

  int pop() {
    if (head == null) {
      return -1;
    }
    int number = head!.data;
    head = head!.next;
    return number;
  }

  int pointer() {
    return head!.data;
  }

  bool isEmpty() {
    return head == null;
  }

  void display() {
    if (head == null) {
      print("stack is empty");
    }
    Node? current = head!;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void deleteNode(int data) {
    if (head == null) {
      print("stack is empty");
      return;
    }
    if (head!.data == data) {
      head = head!.next;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == data) {
        current.next = current.next!.next;
      }
      current = current.next;
    }
    print("data not found in stack");
  }
}
