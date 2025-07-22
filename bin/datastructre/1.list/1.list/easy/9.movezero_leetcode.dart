
//! 283. Move Zeroes   
class Solution {
  void moveZeroes(List<int> nums) {
    int insertPosition = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[insertPosition++] = nums[i];
      }
    }

    while (insertPosition < nums.length) {
      nums[insertPosition++] = 0;
    }
  }
}

void main() {
  List<int> nums = [3, 0, 1, 0, 12, 0, 5];
  print("Before: $nums");

  Solution().moveZeroes(nums);

  print("After:  $nums");
}
