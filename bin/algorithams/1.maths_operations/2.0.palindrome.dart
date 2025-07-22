// 9. Palindrome Number
// Solved
// Easy
// Topics
// Companies
// Hint
// Given an integer x, return true if x is a palindrome, and false otherwise.

// Example 1:

// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.
// Example 2:

class Solution {
  bool isPalindrome(int x) {
    int dup = x;
    int rn = 0;

    if (x < 0) {
      return false;
    }

    while (dup > 0) {
      rn = rn * 10 + dup % 10;
      dup ~/= 10;
    }

    return rn == x;
  }
}

void main() {
  Solution solution = Solution();

  // Test cases
  print(solution.isPalindrome(121)); // true
  print(solution.isPalindrome(-121)); // false
  print(solution.isPalindrome(10)); // false
  print(solution.isPalindrome(0)); // true
}
