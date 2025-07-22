//! retuen given num index  from array , if not found return -1

void main() {
  List<int> arr = [2, 3, 5, 45, 1, 64, 63, 5];
  int num = 45;
  print(contains(num, arr));
}

int contains(int num, List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == num) {
      return i;
    }
  }
  return -1;
}
