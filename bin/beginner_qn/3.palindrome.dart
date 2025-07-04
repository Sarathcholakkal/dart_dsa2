void main() {
  String name = "malayalam";
  isPalindrome(name);
  String name1 = "hello";
  isPalindrome(name1);
  ispalidromeusingfuctions(name1);
}

void isPalindrome(String name) {
  int length = name.length ~/ 2;

  for (int i = 0; i <= length; i++) {
    if (name[i] != name[name.length - 1 - i]) {
      print("not palindrome");
      return;
    }
  }
  print("palindrome");
}

void ispalidromeusingfuctions(String name) {
  String reverse = name.split("").reversed.join("");
  if (name == reverse) {
    print("the String is pallindrome");
  } else {
    print("the string is not palindrome");
  }
}
