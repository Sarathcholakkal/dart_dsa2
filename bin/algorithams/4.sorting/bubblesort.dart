void main() {
  List<int> arr = [2, 4, 1, 6, 440, 23, 100];
  bubbleSort(arr);
  print(arr);
}

void bubbleSort(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr.length - 1 - i; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}
