void main() {
  List<int> a = [1, 3, 5, 7];
  List<int> b = [2, 4, 6, 8, 10];
  mergeTwoSortedLists(a, b);
}

void mergeTwoSortedLists(List<int> list1, List<int> list2) {
  int i = 0, j = 0;
  List<int> output = [];

  while (i < list1.length && j < list2.length) {
    if (list1[i] < list2[j]) {
      output.add(list1[i++]);
    } else {
      output.add(list2[j++]);
    }
  }

  while (i < list1.length) {
    output.add(list1[i++]);
  }

  while (j < list2.length) {
    output.add(list2[j++]);
  }

  print("Merged sorted list: $output");
}
