void main() {
  //! efficient solution using two pointer , which provide n timecomplexcity

  List<int> list = [1, 1, 2, 2, 2, 3, 5, 5];

  int i = 0;
  for (int j = 1; j < list.length; j++) {
    if (list[i] != list[j]) {
      list[i + 1] = list[j];
      i++;
    }
  }
  list.length =
      i + 1; // list length is + 1 than index of last element that why dded 1

  print(list);
}

//remove duplicate from give arrya using two pointer time compexicy  n
