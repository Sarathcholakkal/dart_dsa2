// 7. Reverse Integer
// Solved
// Medium
// Topics
// Companies
// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

class Solution {
  int reverse(int x) {
    int dup = x.abs();
    int rn = 0;

    while (dup > 0) {
      rn = rn * 10 + dup % 10;
      dup = dup ~/ 10;
    }

    // Check 32-bit signed integer overflow
    if (rn > 2147483647 || rn < -2147483647) {
      return 0;
    }

    if (x < 0) {
      return -rn;
    } else {
      return rn;
    }
  }
}

void main() {
  Solution solution = Solution();

  print(solution.reverse(123)); // Output: 321
  print(solution.reverse(-123)); // Output: -321
  print(solution.reverse(120)); // Output: 21
  print(solution.reverse(0)); // Output: 0
  print(solution.reverse(1534236469)); // Output: 0 (overflow case)
}
