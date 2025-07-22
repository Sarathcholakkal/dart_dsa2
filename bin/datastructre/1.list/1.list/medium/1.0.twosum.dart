class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return [-1, -1];
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  List<int> result = solution.twoSum(nums, target);
  print("Indices: $result"); // Output: Indices: [0, 1]
}
