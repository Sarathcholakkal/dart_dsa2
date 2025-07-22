// 326. Power of Three

// Given an integer n, return true if it is a power of three. Otherwise, return false.

// An integer n is a power of three, if there exists an integer x such that n == 3x.

class Solution {
  bool isPowerOfThree(int n) {
    if (n == 1) return true;
    if (n < 1 || n % 3 != 0) return false;
    return isPowerOfThree(n ~/ 3);
  }
}

void main() {
  Solution solution = Solution();

  int test = 81; // Change this value to test other numbers

  if (solution.isPowerOfThree(test)) {
    print('$test is a power of 3.');
  } else {
    print('$test is NOT a power of 3.');
  }
}
