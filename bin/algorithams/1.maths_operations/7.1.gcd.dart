void main() {
  int num1 = 39;
  int num2 = 10;
  //the gcd of both is greates common divisor
  //equalrity law state that  gcd(n1,n2)==gcd(n1-n2,n2) where is n1 is larger than n2
  // trancate unitl reach on of them zero other will be gcd
  // to reduce this truncate step use mod opeator
  // gcd(n1%n2,n2); trancate like this until once become zero

  while (num1 > 0 && num2 > 0) {
    if (num2 > num1) {
      num2 = num2 % num1;
    } else {
      num1 = num1 % num2;
    }
  }

  if (num1 == 0) {
    print(num2);
  } else {
    print(num1);
  }
}
