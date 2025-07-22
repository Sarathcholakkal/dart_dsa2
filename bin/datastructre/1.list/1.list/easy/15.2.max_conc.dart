void main() {
  List<int> arr = [1, 1, 2, 2, 3, 3, 4, 4, 5, 6, 6, 7, 7];
  int num = 0;

  for (int i = 0; i < arr.length; i++) {
    num = num ^ arr[i];
  }
  print(num);
}
