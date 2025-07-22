void main() {
  Stack newStack = Stack();
  newStack.push(1);
  newStack.push(2);
  newStack.push(3);
  newStack.push(4);
  newStack.push(5);
  newStack.display();

  print("\nDeleting node at position 3...");
  newStack.deleteAt(3);
  newStack.display();

  print("\nDeleting node at position 1...");
  newStack.deleteAt(1);
  newStack.display();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(int data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  void display() {
    Node? current = top;
    if (current == null) {
      print("Stack is empty");
      return;
    }
    while (current != null) {
      print("${current.data}");
      current = current.next;
    }
  }

  void pop() {
    if (top == null) {
      return;
    }
    top = top!.next;
  }

  void deleteAt(int position) {
    if (top == null) {
      print("Stack is empty");
      return;
    }

    // If deleting the top node
    if (position == 1) {
      top = top!.next;
      return;
    }

    Node? current = top;
    Node? prev;
    int count = 1;

    while (current != null && count < position) {
      prev = current;
      current = current.next;
      count++;
    }

    if (current == null) {
      print("Position $position is out of range.");
      return;
    }

    prev!.next = current.next; // Unlink the node to be deleted
  }
}
