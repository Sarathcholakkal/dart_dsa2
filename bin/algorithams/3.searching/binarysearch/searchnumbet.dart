class BinarySearch {
  static bool binarySearch(List<int> arr, int numberToSearch) {
    int left = 0;
    int right = arr.length - 1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;

      if (arr[mid] == numberToSearch) {
        return true;
      }

      if (arr[mid] < numberToSearch) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return false;
  }
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int numberToSearch = 0;

  bool result = BinarySearch.binarySearch(arr, numberToSearch);
  print(result ? result : false);
}
