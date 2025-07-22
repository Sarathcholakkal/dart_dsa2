void main() {
  int num = 36;
  //print all divisor of num
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      print(i);
    }
  }
}

//! which took O(n)T time complexicity
