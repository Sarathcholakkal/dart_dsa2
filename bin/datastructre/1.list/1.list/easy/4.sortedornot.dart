void main() {
  List<int> arr = [2, 4, 44, 67, 2, 13, 4, 6];
  List<int> arr2 = [1, 2, 4, 6];

  print(issorted(arr2));
  print(issorted(arr));
}

bool issorted(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] >= arr[i - 1]) {
      continue;
    }
    return false;
  }
  return true;
}
//! time complexcity O(n)T
