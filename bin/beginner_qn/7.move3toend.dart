//!Write a program to move all multiple of three to the end of a given array and remove multiples of 2

void main() {
  List<int> list = [2, 3, 5, 5, 6, 6, 7, 2, 4, 6, 3, 4, 2, 34, 4, 3, 2, 3];
  move3toenddeleteZero(List.of(list));
  move3multpleanddelete2muiltpusingtwopointerordernotpreserved(list);
}

void move3toenddeleteZero(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 3 == 0) {
      int temp = list[i];
      for (int j = i; j < list.length - 1; j++) {
        list[j] = list[j + 1];
      }
      list[list.length - 1] = temp;
    }
  }
  int k = 0;
  while (k < list.length) {
    if (list[k] % 2 == 0) {
      list.removeAt(k);
    } else {
      k++;
    }
  }
  print("after move 3 multiple to end and remove 2 multiple:$list");
}

void move3multpleanddelete2muiltpusingtwopointerordernotpreserved(
  List<int> newlist,
) {
  int left = 0;
  int right = newlist.length - 1;

  void swap(List<int> list, int i, int j) {
    int temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }

  while (left < right) {
    if (newlist[left] % 3 == 0) {
      swap(newlist, left, right);
      right--;
    } else {
      left++;
    }
  }

  int k = 0;
  while (k < newlist.length) {
    if (newlist[k] % 2 == 0) {
      newlist.removeAt(k);
    } else {
      k++;
    }
  }

  print('result using two pointer:$newlist');
}
