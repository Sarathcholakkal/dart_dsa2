//! find largest in given array ,

void main() {
  List<int> arr = [1, 4, 2, 53, 6, 23, 646, 23];

  //! efficient solution take n time complexicity

  int largest = arr[0];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > largest) {
      largest = arr[i];
    }
  }
  print(largest);
}
