void main() {
  List<int> arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  int n = arr.length;
  int maxSum = maxSubarraySum(arr, n);
  print("The maximum subarray sum is: $maxSum");
}

int maxSubarraySum(List<int> arr, int n) {
  int maxi = -9223372036854775808; // Equivalent of Long.MIN_VALUE
  int sum = 0;

  for (int i = 0; i < n; i++) {
    sum += arr[i];

    if (sum > maxi) {
      maxi = sum;
    }

    // If sum < 0: reset it
    if (sum < 0) {
      sum = 0;
    }
  }

  // Optional: to consider an empty subarray
  // if (maxi < 0) maxi = 0;

  return maxi;
}
