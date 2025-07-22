// this is follow up question, return maximum sub array  return

void main() {
  List<int> arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  int n = arr.length;
  List<int> result = maxSubarray(arr, n);
  print("The maximum subarray is: $result");
  int sum = result.reduce((a, b) => a + b);
  print("The maximum subarray sum is: $sum");
}

List<int> maxSubarray(List<int> arr, int n) {
  int maxi = -9223372036854775808; // Equivalent of Long.MIN_VALUE
  int sum = 0;
  int start = 0;
  int ansStart = 0;
  int ansEnd = 0;

  for (int i = 0; i < n; i++) {
    if (sum == 0) start = i;

    sum += arr[i];

    if (sum > maxi) {
      maxi = sum;
      ansStart = start;
      ansEnd = i;
    }

    if (sum < 0) {
      sum = 0;
    }
  }

  // Include the last element, hence +1 in sublist
  return arr.sublist(ansStart, ansEnd + 1);
}
