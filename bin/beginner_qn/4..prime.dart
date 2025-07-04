void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 23, 45];
  removeprimeNumber(list);
  print(isprime(7));
}

void removeprimeNumber(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    if (isprime(list[i])) {
      list.removeAt(i);
    }
  }
  print(list);
}

bool isprime(int el) {
  if (el <= 1) {
    return false;
  } else {
    for (int j = 2; j * j <= el; j++) {
      if (el % j == 0) {
        return false;
      }
    }
  }
  return true;
}
