void main() {
  List<int> stack = [];

  // Push
  stack.add(10);
  stack.add(20);
  stack.add(30);

  print("Stack: $stack"); // [10, 20, 30]

  // Peek
  print("Top: ${stack.last}"); // 30

  // Pop
  int popped = stack.removeLast();
  print("Popped: $popped"); // 30

  print("Stack after pop: $stack"); // [10, 20]
}
