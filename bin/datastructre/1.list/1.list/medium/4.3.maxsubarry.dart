class Solution {
  int maxSubArray(List<int> nums) {
    int maxsofar = nums[0]; // Stores the maximum sum found so far
    int currmax = nums[0]; // Stores the current subarray sum

    for (int i = 1; i < nums.length; i++) {
      // Either start new subarray at nums[i], or continue the previous one
      currmax = nums[i] > (currmax + nums[i]) ? nums[i] : (currmax + nums[i]);

      // Update maxsofar if currmax is greater
      maxsofar = maxsofar > currmax ? maxsofar : currmax;
    }

    return maxsofar;
  }
}

void main() {
  List<int> arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  Solution sol = Solution();
  int result = sol.maxSubArray(arr);
  print("The maximum subarray sum is: $result");
}
