// gready approch without  using map datasturctre , here index not preseved not optimal for asking question for index

class Solution {
  bool twoSum(List<int> nums, int target) {
    nums.sort();

    int left = 0;

    int right = nums.length - 1;
    int sum = 0;
    while (left < right) {
      sum = nums[left] + nums[right];

      if (sum == target) {
        return true;
      } else if (sum < target) {
        left++;
      } else {
        right--;
      }
    }
    return false;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  bool result = solution.twoSum(nums, target);
  print("find or not: $result"); // Output: Indices: [0, 1]
}
