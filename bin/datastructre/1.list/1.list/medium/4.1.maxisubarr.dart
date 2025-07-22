import 'dart:math';

void main() {
  List<int> nums = [-2, -3, 4, -1, -2, 1, 5];
  int maxi = 0;
  for (int i = 0; i < nums.length; i++) {
    int sum = 0;
    for (int j = i; j < nums.length; j++) {
      sum += nums[j];

      maxi = max(sum, maxi);
    }
  }
  print(maxi);
}
