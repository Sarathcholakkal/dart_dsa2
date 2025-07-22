void main() {
  List<int> arr = [2, 4, 1, 6, 440, 23, 100];
  inserationSort(arr);

  print(arr);
}

// void insertionSort(List<int> arr) {
//   for (int i = 1; i < arr.length; i++) {
//     int current = arr[i];
//     int j = i - 1;
//     while (j >= 0 && arr[j] > current) {
//       arr[j + 1] = arr[j];
//       j--;
//     }
//     arr[j + 1] = current;
//   }
// }

void inserationSort(List<int> nums) {
  for (int i = 1; i < nums.length; i++) {
    int inhand = nums[i];
    int j = i - 1;

    while (j >= 0 && nums[j] > inhand) {
      nums[j + 1] = nums[j];
      j--;
    }
    nums[j + 1] = inhand;
  }
}
