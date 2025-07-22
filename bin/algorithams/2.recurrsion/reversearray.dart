void reverseArray(List<int> arr, int start, int end) {
  if (start >= end) return;

  int temp = arr[start];
  arr[start] = arr[end];
  arr[end] = temp;

  reverseArray(arr, start + 1, end - 1);
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  reverseArray(arr, 0, arr.length - 1);
  print(arr);
}
