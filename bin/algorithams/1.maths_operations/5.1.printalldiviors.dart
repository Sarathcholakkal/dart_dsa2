import 'dart:math';

void main() {
  int num = 36;
  List<int> divisor = [];
  //print all divisor of num
  int n =
      sqrt(num).toInt(); // to avoid this calculation we can use limit as i*i<=n
  for (int i = 1; i * i <= num; i++) {
    // ! squrt(n)T
    if (num % i == 0) {
      divisor.add(i);
      if (num ~/ i != i) {
        divisor.add(num ~/ i);
      }
    }
  }
  divisor
      .sort(); //! nlogn here loop run  squrt(n) so nlogn considered as (squrt(n)*log*squrt(n))T
  print(divisor);
}
