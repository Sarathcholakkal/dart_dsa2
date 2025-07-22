//! 189. Rotate Array

class Solution {
  void rotate(List<int> nums, int k) {
    int n = nums.length;
    k = k % n;

    // Step 1: Reverse the entire array
    reverse(nums, 0, n - 1);

    // Step 2: Reverse the first k elements
    reverse(nums, 0, k - 1);

    // Step 3: Reverse the rest
    reverse(nums, k, n - 1);
  }

  void reverse(List<int> arr, int start, int end) {
    while (start < end) {
      int temp = arr[start];
      arr[start] = arr[end];
      arr[end] = temp;
      start++;
      end--;
    }
  }
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  int k = 3;

  Solution sol = Solution();
  sol.rotate(nums, k);

  print(nums); // Output: [5, 6, 7, 1, 2, 3, 4]
}
