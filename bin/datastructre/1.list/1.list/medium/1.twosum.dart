class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> hashMap = {};
    for (int i = 0; i < nums.length; i++) {
      int diff = target - nums[i];
      if (hashMap.containsKey(diff)) {
        return [hashMap[diff]!, i];
      }
      hashMap[nums[i]] = i;
    }
    return [-1, -1]; // If no solution is found
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  List<int> result = solution.twoSum(nums, target);
  print("Indices: $result"); // Output: Indices: [0, 1]
}
