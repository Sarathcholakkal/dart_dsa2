void main(List<String> args) {
  List<int> list1 = [2, 3, 8, 4, 8, 9];
  List<int> list2 = [3, 5, 2, 6, 23, 2];
  addTwoList(list1, list2);
}

void addTwoList(List<int> list1, List<int> list2) {
  List<int> list3 = List.filled(list1.length + list2.length, 0);
  for (int i = 0; i < list1.length; i++) {
    list3[i] = list1[i];
  }

  for (int j = 0; j < list2.length; j++) {
    list3[list1.length + j] = list2[j];
  }

  print('added list is: $list3');
}
