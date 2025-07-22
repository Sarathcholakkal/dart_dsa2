void main() {
  int num1 = 52;
  int num2 = 10;
  //the gcd of both is greates common divisor
  int min = num2 < num1 ? num2 : num1;

  for (int i = min; i >= 1; i--) {
    if (num1 % i == 0 && num2 % i == 0) {
      print(i);
      break;
    }
  }
}
