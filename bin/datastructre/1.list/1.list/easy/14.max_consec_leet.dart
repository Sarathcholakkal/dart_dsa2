import 'dart:math';

//! Leetcode 485 maximum consective on 1's

class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int count = 0;
    int maxCount = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        count++;
        maxCount = max(count, maxCount);
      } else {
        count = 0;
      }
    }
    return maxCount;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [1, 1, 0, 1, 1, 1]; // Example input
  int result = solution.findMaxConsecutiveOnes(nums);
  print("Maximum number of consecutive 1s: $result");
}
