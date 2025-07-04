void main() {
  List<int> list = [1, -2, 3, -4, 5, -60, 70, -80, 90, -100];
  moveusingtwopointer(List.of(list));
  movenegrightposrightn2complexcity(List.of(list));
  movepostiveleftandnegrightusingextraspace(list);
}

void movepostiveleftandnegrightusingextraspace(List<int> list) {
  List<int> positive = [];
  List<int> negative = [];

  for (int num in list) {
    if (num >= 0) {
      positive.add(num);
    } else {
      negative.add(num);
    }
  }

  List<int> result = [...positive, ...negative];
  print("Positive Left, Negative Right: $result");
}

void moveusingtwopointer(List<int> list) {
  int left = 0;
  int right = list.length - 1;
  while (left < right) {
    if (list[left] < 0 && list[right] >= 0) {
      int temp = list[left];
      list[left] = list[right];
      list[right] = temp;
      left++;
      right--;
    }
    if (list[left] >= 0) left++;
    if (list[right] < 0) right--;
  }

  print("move neg to right and pos left:$list");
}

void movenegrightposrightn2complexcity(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] >= 0) {
      int temp = list[i];
      for (int j = i; j > 0; j--) {
        list[j] = list[j - 1];
      }
      list[0] = temp;
    }
  }
  print('n^2 complexcity:$list');
}
