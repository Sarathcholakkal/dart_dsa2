void main() {
  List<int> nums = [1, 1, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 6];

  for (int i = 0; i < nums.length; i++) {
    int count = 0;
    for (int j = 0; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        count++;
      }
    }
    if (count > nums.length ~/ 2) {
      print(nums[i]);
      break;
    }
  }
}
