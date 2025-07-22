void main() {
  List<int> arr = [-1, 2, 3, 4, -3, 1];
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

  if (posi.length < neg.length) {
    for (int i = 0; i < posi.length; i++) {
      //! O(n)T
      arr[i * 2] = posi[i];
      arr[(i * 2) + 1] = neg[i];
    }
    int index = posi.length * 2;

    for (int i = posi.length; i < neg.length; i++) {
      arr[index++] = neg[i];
    }
  } else {
    for (int i = 0; i < neg.length; i++) {
      //! O(n)T wrost case either positive only or negative only and best case O(n/2)T
      arr[i * 2] = posi[i];
      arr[(i * 2) + 1] = neg[i];
    }
    int index = neg.length * 2;

    for (int i = neg.length; i < posi.length; i++) {
      arr[index++] = posi[i];
    }
  }

  print(arr);
}
//! space complexiciy  O(n) S and time complexcity O(2n)T//
