//! find largest in given array ,

void main() {
  //! Brute force  take nlogn time complexcity
  List<int> arr = [1, 4, 2, 53, 6, 23, 646, 23];

  arr.sort();
  print(arr[arr.length - 1]);
}
