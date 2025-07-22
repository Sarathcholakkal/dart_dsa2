void main() {
  //! rotate arr left one place took time complexcity on O(n)
  List<int> arr = [1, 2, 3, 4, 5, 6];
  int temp = arr[0];

  for (int i = 1; i < arr.length; i++) {
    arr[i - 1] = arr[i];
  }
  arr[arr.length - 1] = temp;

  print(arr);
}
