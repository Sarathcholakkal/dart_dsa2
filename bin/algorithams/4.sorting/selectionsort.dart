// void main() {
//   List<int> arr = [20, 30, 110, 56, 23, 65, 87];

//   selectionSort(arr);

//   print(arr); // Output: [20, 23, 30, 56, 65, 87, 110]
// }

// void selectionSort(List<int> arr) {
//   for (int i = 0; i < arr.length; i++) {
//     int min = i;
//     for (int j = i + 1; j < arr.length; j++) {
//       if (arr[j] < arr[i]) {
//         min = j;
//       }
//     }
//     if (i != min) {
//       int temp = arr[i];
//       arr[i] = arr[min];
//       arr[min] = temp;
//     }
//   }
// }

void main() {
  List<int> nums = [2, 3, 2, 5, 6, 22, 55, 262, 21, 743, 543];

  for (int i = 0; i < nums.length; i++) {
    int minidx = i;
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[minidx] > nums[j]) {
        minidx = j;
      }
    }

    int temp = nums[minidx];
    nums[minidx] = nums[i];
    nums[i] = temp;
  }
  print(nums);
}
