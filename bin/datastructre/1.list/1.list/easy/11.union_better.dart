void main() {
  List<int> arr1 = [1, 2, 3, 3, 4, 4, 5, 6, 6];
  List<int> arr2 = [1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 7];
  int n1 = arr1.length;
  int n2 = arr2.length;
  List<int> union = [];
  int i = 0;
  int j = 0;

  while (i < n1 && j < n2) {
    if (arr1[i] < arr2[j]) {
      if (!union.contains(arr1[i])) {
        union.add(arr1[i]);
      }
      i++;
    } else {
      if (!union.contains(arr2[j])) {
        union.add(arr2[j]);
      }
      j++;
    }
  }
  while (i < n1) {
    if (!union.contains(arr1[i])) {
      union.add(arr1[i]);
    }
    i++;
  }

  while (j < n2) {
    if (!union.contains(arr2[j])) {
      union.add(arr2[j]);
    }
    j++;
  }

  print(union);

  //! time  complexcity  O(n1+n2)T and space complexicity  O(n1+n2)S (worst case all element is unique)
}
