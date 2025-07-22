//! longest sub array of sum k

import 'dart:math';

import 'dart:math';

void main() {
  List<int> arr = [1, 2, 3, 1, 1, 1, 1, 4, 2, 3];
  int k = 3;

  int maxLength = 0;

  for (int i = 0; i < arr.length; i++) {
    int sum = 0;
    for (int j = i; j < arr.length; j++) {
      sum += arr[j];
      if (sum == k) {
        maxLength = max(maxLength, j - i + 1);
      }
    }
  }

  print(maxLength);
}
