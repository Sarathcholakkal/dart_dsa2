void main(List<String> args) {
  List<int> arr = [2, 3, 56, 7, 82, 9, 11, 3];

  //! brute force took nlogn + n time complexicity

  arr.sort();
  int largest = arr[arr.length - 1];
  int secondlargest = -1;

  for (int i = arr.length - 2; i >= 0; i--) {
    if (arr[i] != largest) {
      secondlargest = arr[i];
      break;
    }
  }

  print(secondlargest);
}
