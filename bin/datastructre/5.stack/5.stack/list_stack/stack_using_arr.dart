class Stack {
  List<String> _stack = [];

  void push(String element) {
    _stack.add(element);
  }

  String? pop() {
    if (isEmpty) {
      return null;
    }
    return _stack.removeLast();
  }

  String? peek() {
    if (isEmpty) {
      return null;
    }
    return _stack.last;
  }

  bool get isEmpty => _stack.isEmpty;
}
