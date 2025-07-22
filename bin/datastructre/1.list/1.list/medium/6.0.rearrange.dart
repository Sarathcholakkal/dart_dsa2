void main() {
  List<int> arr = [3, 1, -2, -5, 2, -4];
  List<int> posi = [];
  List<int> neg = [];

  for (int i = 0; i < arr.length; i++) {
    //! O(n)T
    if (arr[i] < 0) {
      neg.add(arr[i]);
    } else {
      posi.add(arr[i]);
    }
  }

  for (int i = 0; i < posi.length; i++) {
    //! O(n)T
    arr[i * 2] = posi[i];
    arr[(i * 2) + 1] = neg[i];
  }
  print(arr);
}
//! space complexiciy  O(n) S and time complexcity O(2n)T
