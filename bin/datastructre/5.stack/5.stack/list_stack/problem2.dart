// //! 20. Valid Parentheses
// // Solved
// // Easy
// // Topics
// // Companies
// // Hint
// // Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// // An input string is valid if:

// // Open brackets must be closed by the same type of brackets.
// // Open brackets must be closed in the correct order.
// // Every close bracket has a corresponding open bracket of the same type.

// // Example 1:

// // Input: s = "()"

// // Output: true

// class Solution {
//   bool isValid(String s) {
//     List<String> stack = [];

//     for (int i = 0; i < s.length; i++) {
//       if (s[i] == '{' || s[i] == '[' || s[i] == '(') {
//         stack.add(s[i]);
//       } else {
//         if (stack.isEmpty) {
//           return false;
//         }
//         String lastBracket = stack.removeLast();

//         if ((s[i] == '}' && lastBracket != '{') ||
//             (s[i] == ')' && lastBracket != '(') ||
//             (s[i] == ']' && lastBracket != '[')) {
//           return false;
//         }
//       }
//     }

//     return stack.isEmpty;
//   }
// }

void main() {
  Solution solution = Solution();

  // Test cases
  print(solution.isValid("()")); // true
  print(solution.isValid("()[]{}")); // true
  print(solution.isValid("(]")); // false
  print(solution.isValid("([)]")); // false
  print(solution.isValid("{[]}")); // true
}

class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      if (s[i] == '{' || s[i] == '[' || s[i] == '(') {
        stack.add(s[i]);
      } else {
        if (stack.isEmpty) {
          return false;
        }
        if ((s[i] == '}' && stack.removeLast() != '{') ||
            (s[i] == ']' && stack.removeLast() != '[') ||
            (s[i] == ')' && stack.removeLast() != '(')) {
          return false;
        }
      }
    }
    return true;
  }
}
