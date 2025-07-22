//dutch flag algoritham

void main() {
  List<int> arr = [1, 0, 2, 0, 1, 2, 1, 2, 0, 0, 0, 0, 1];
  int low = 0;
  int high = arr.length - 1;
  int mid = 0;

  while (mid <= high) {
    if (arr[mid] == 0) {
      swap(arr, mid, low);
      low++;
      mid++;
    } else if (arr[mid] == 1) {
      mid++;
    } else if (arr[mid] == 2) {
      swap(arr, mid, high);
      high--;
    }
  }

  print(arr);

  //! only one iteration took O(N)T
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
