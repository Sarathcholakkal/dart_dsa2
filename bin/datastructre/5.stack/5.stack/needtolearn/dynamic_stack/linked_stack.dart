void main() {
  Stack newStack = Stack();
  newStack.push(1);
  newStack.push(2);
  newStack.push(3);
  newStack.push(4);
  newStack.push(5);
  print(",,,,,,,,,,,,,,,,,,,,,,,,,");
  newStack.display();
  newStack.pop();
  print(",,,,,,,,,,,,,,,,,,,,,,,,,");
  newStack.display();
  print(",,,,,,,,,,,,,,,,,,,,,,,,,");
  print(newStack.size);
  print(",,,,,,,,,,,,,,,,,,,,,,,,,");
  print(newStack.stackPointer());
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;
  int size = 0;

  void push(int data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
      size++;
    } else {
      newNode.next = top;
      top = newNode;
      size++;
    }
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
    size--;
  }

  int stackPointer() {
    if (top != null) {
      return top!.data;
    } else {
      return -1;
    }
  }

  int findsize() {
    return size;
  }
}
