void main() {
  List<int> arr1 = [1, 2, 3, 3, 4, 4, 5, 6, 6];
  List<int> arr2 = [1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 7];

  //union means compained array in sorted  way without and duplicates

  // when we start think about unique elemnt , also consider set and map datastructre

  //! brute force

  Set<int> uniqset = {};
  int n1 = arr1.length;
  int n2 = arr2.length;

  for (int i = 0; i < n1; i++) {
    uniqset.add(arr1[i]);
  }
  for (int i = 0; i < n2; i++) {
    uniqset.add(arr2[i]);
  }
  List<int> result = uniqset.toList()..sort();

  print(result);
}
