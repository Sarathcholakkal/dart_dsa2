class Solution {
  int missingNumber(List<int> nums) {
    int n = nums.length;
    int xor1 = 0;
    int xor2 = 0;

    for (int i = 0; i < n; i++) {
      xor1 = xor1 ^ nums[i];
      xor2 = xor2 ^ i;
    }

    xor2 = xor2 ^ n; // include the last number in the range [0..n]

    int missing = xor1 ^ xor2;
    return missing;
  }
}

void main() {
  Solution sol = Solution();

  List<int> nums = [3, 0, 1]; // Missing number is 2
  int result = sol.missingNumber(nums);

  print("Missing number is: $result");
}

// calculation of sum number will exceed some time int limit , to avoid this we use Xor operations
//! //Timecomplexcity O(n)T no extra space
