import 'dart:math';

void main() {
  List<int> arr = [1, 2, 3, 1, 1, 1, 1, 4, 2, 3];
  int k = 6;

  int maxLength = 0;
  int sum = 0;
  int left = 0;
  int right = 0;
  int n = arr.length;

  while (right < n) {
    while (left <= right && sum > k) {
      sum -= arr[left];
      left++;
    }
    if (sum == k) {
      maxLength = max(maxLength, right - left);
    }

    right++;

    if (right < n) {
      sum += arr[right];
    }
  }

  print(maxLength);
}
