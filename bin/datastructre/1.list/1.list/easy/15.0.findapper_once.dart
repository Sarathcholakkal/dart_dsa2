void main() {
  List<int> arr = [1, 1, 2, 2, 3, 3, 4, 4, 5, 6, 6, 7, 7];
  int num = 0;

  for (int i = 1; i <= arr.length; i++) {
    int count = 0;

    for (int j = 0; j < arr.length; j++) {
      if (arr[j] == i) {
        count++;
      }
    }
    if (count == 1) {
      num = i;
      break;
    }
  }
  print(num);
}
