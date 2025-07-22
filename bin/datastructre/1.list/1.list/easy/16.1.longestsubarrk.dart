import 'dart:math';

void main() {
  List<int> arr = [1, 2, 3, 1, 1, 1, 1, 4, 2, 3];
  int k = 3;

  int maxLength = 0;
  int sum = 0;
  Map<int, int> presum = {};

  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
    if (sum == k) {
      maxLength = max(maxLength, i + 1);
    }
    int rem = sum - k;

    if (presum.containsKey(rem)) {
      maxLength = max(maxLength, i - presum[rem]!);
    } else if (!presum.containsKey(sum)) {
      // handle zdro
      presum[sum] = i;
    }
  }

  print(maxLength);
}
