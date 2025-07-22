String reverseString(String s) {
  List<String> stack = [];

  for (int i = 0; i < s.length; i++) {
    stack.add(s[i]);
  }

  StringBuffer result = StringBuffer();

  while (stack.isNotEmpty) {
    result.write(stack.removeLast());
  }
  return result.toString();
}

void main() {
  String name = "hello";
  String result = reverseString(name);
  print(result);
}
