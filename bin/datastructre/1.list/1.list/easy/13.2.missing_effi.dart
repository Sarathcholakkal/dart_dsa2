void main() {
  List<int> nums = [1, 2, 4, 5];
  int n = 5;

  int actualsum = n * (n + 1) ~/ 2;
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  int missing = actualsum - sum;

  print(missing);
}

//! will take time complexcit of O(n)T no addtional space needed


