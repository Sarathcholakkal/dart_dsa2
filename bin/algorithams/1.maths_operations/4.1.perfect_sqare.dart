class Solution {
  bool isPerfectSquare(int num) {
    int left = 1;
    int right = num;

    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);
      int square = mid * mid;

      if (square == num) {
        return true;
      } else if (square < num) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return false;
  }
}

//! took logn which better than squre root n
void main() {
  Solution solution = Solution();

  // Test cases
  print(solution.isPerfectSquare(16)); // true
  print(solution.isPerfectSquare(14)); // false
  print(solution.isPerfectSquare(1)); // true
  print(solution.isPerfectSquare(100)); // true
  print(solution.isPerfectSquare(99)); // false
}
