//! remove vowel from your name using stack (use list and inbuild function)

// String removeVowel(String s) {
//   bool isvowel(String ch) {
//     return "aeiouAEIOU".contains(ch);
//   }

//   StringBuffer result = StringBuffer();

//   for (int i = 0; i < s.length; i++) {
//     if (!isvowel(s[i])) {
//       result.write(s[i]);
//     }
//   }
//   return result.toString();
// }

void main() {
  String name = 'sarath';
  String without = removeVowel(name);
  print(without);
}

//! using stack

String removeVowel(String s) {
  List<String> stack = [];

  bool isvowel(String ch) {
    return "aeiouAEIOU".contains(ch);
  }

  for (int i = s.length - 1; i >= 0; i--) {
    if (!isvowel(s[i])) {
      stack.add(s[i]);
    }
  }
  StringBuffer result = StringBuffer();

  while (stack.isNotEmpty) {
    result.write(stack.removeLast());
  }
  return result.toString();
}
