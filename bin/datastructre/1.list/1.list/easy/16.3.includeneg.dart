// longest subarray sum k  including negative value
import 'dart:collection';
import 'dart:math';

int getLongestSubarray(List<int> a, int k) {
  int n = a.length;
  Map<int, int> preSumMap = {};
  int sum = 0;
  int maxLen = 0;

  for (int i = 0; i < n; i++) {
    sum += a[i];

    if (sum == k) {
      maxLen = max(maxLen, i + 1);
    }

    int rem = sum - k;
    if (preSumMap.containsKey(rem)) {
      int len = i - preSumMap[rem]!;
      maxLen = max(maxLen, len);
    }

    if (!preSumMap.containsKey(sum)) {
      preSumMap[sum] = i;
    }
  }

  return maxLen;
}

void main() {
  List<int> a = [-1, 1, 1];
  int k = 1;
  int len = getLongestSubarray(a, k);
  print("The length of the longest subarray is: $len");
}
