class FixedSizeStack {
  final int capacity;
  late List<int> _stack;
  int _top = -1;

  FixedSizeStack(this.capacity) {
    _stack = List.filled(capacity, 0); // initialize with default values
  }

  // Push element onto the stack
  void push(int x) {
    if (_top >= capacity - 1) {
      print("Stack Overflow! Cannot push $x.");
      return;
    }
    _top++;
    _stack[_top] = x;
  }

  // Pop element from the stack
  void pop() {
    if (_top == -1) {
      print("Stack Underflow! Nothing to pop.");
      return;
    }
    _top--;
  }

  // Get top element
  int? top() {
    if (_top == -1) {
      print("Stack is empty.");
      return null;
    }
    return _stack[_top];
  }

  // Get current size of the stack
  int size() => _top + 1;

  // Display the stack
  void display() {
    if (_top == -1) {
      print("Stack is empty.");
      return;
    }
    print("Stack (top to bottom):");
    for (int i = _top; i >= 0; i--) {
      print(_stack[i]);
    }
  }
}
