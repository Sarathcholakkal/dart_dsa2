import 'dart:io';

void main() {
  List<int> nums = [1, 1, 2, 3, 4, 4, 4, 4, 4, 6, 6, 6];
  // List<int> nums = [
  //   7,
  //   7,
  //   5,
  //   7,
  //   5,
  //   1,
  //   5,
  //   7,
  //   5,
  //   5,
  //   7,
  //   7,
  //   5,
  //   5,
  //   5,
  //   5,
  //   1,
  //   1,
  //   1,
  //   1,
  //   1
  // ];

  int n = nums.length;

  int el = nums[0];

  int count = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == el) {
      count++;
    } else if (count == 0) {
      el = nums[i];
      count++;
    } else {
      count--;
    }
  }

  print("the majoritey element is:$el");
  int newcount = 0;

  for (int e in nums) {
    if (e == el) {
      newcount++;
    }
  }

  print(newcount);

  // if problem statethat there is might or might not majority element

  if (newcount > n ~/ 2) {
    print(el);
  } else {
    print(-1);
  }
}
