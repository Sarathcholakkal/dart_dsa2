// 367. Valid Perfect Square
// Given a positive integer num, return true if num is a perfect square or false otherwise.

// A perfect square is an integer that is the square of an integer. In other words, it is the product of some integer with itself.

// You must not use any built-in library function, such as sqrt.
class Solution {
  bool isPerfectSquare(int num) {
    for (int i = 1; i <= num; i++) {
      if (i * i == num) {
        return true;
      }
      if (i * i > num) {
        return false;
      }
    }
    return false;
  }
}

void main() {
  Solution solution = Solution();

  // Test cases
  print(solution.isPerfectSquare(16)); // true
  print(solution.isPerfectSquare(14)); // false
  print(solution.isPerfectSquare(1)); // true
  print(solution.isPerfectSquare(100)); // true
  print(solution.isPerfectSquare(99)); // false
}
//! which took squrt of n    time complexcity
