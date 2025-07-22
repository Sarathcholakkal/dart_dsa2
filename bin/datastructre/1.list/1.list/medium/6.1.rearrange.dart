void main() {
  List<int> arr = [3, 1, -2, -5, 2, -4];
  int posi = 0;
  int neg = 1;
  List<int> temp = List.filled(arr.length, 0);
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < 0) {
      temp[neg] = arr[i];
      neg += 2;
    } else {
      temp[posi] = arr[i];
      posi += 2;
    }
  }

  print(temp);
}
//! space complexiciy  O(n) S and time complexcity O(n)T ,which improve time complexcity better
