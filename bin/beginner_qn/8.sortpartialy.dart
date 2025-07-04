//!Write a program in C to sort an array in descending order to the left from middle and in ascending order to the right from middle.

void main() {
  List<int> list = [1, 2, 3, 4, 5, 60, 70, 80, 90, 100];
  sortPartialy(list);
}

void sortPartialy(List<int> list) {
  int half = list.length ~/ 2;

  for (int i = 0; i < list.length; i++) {
    if (i < half) {
      for (int j = i + 1; j < half; j++) {
        if (list[i] < list[j]) {
          int temp = list[i];
          list[i] = list[j];
          list[j] = temp;
        }
      }
    } else {
      for (int j = i + 1; j < list.length; j++) {
        if (list[i] > list[j]) {
          int temp = list[i];
          list[i] = list[j];
          list[j] = temp;
        }
      }
    }
  }
  print(list);
}
