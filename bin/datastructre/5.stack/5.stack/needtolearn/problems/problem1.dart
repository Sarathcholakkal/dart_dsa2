//! removes vowels from a given name using a stack,liniked list

void main() {
  String name = "sarath"; 
  Stack charStack = Stack();

 
  for (int i = 0; i < name.length; i++) {
    charStack.push(name[i]);
  }

  String result = "";
  while (!charStack.isEmpty()) {
    String ch = charStack.pop();
    if (!isVowel(ch)) {
      result = ch + result; 
    }
  }

  print("Name without vowels: $result");
}


bool isVowel(String ch) {
  return "aeiouAEIOU".contains(ch);
}


class Node {
  String data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(String data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  String pop() {
    if (top == null) {
      return "";
    }
    String data = top!.data;
    top = top!.next;
    return data;
  }

  bool isEmpty() {
    return top == null;
  }
}