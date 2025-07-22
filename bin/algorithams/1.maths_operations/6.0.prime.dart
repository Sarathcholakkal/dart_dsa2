void main() {
  //count prime number
  // prime number is a number which has only two factor that is 1 and itself
  //int num = 29; // its is prime
  int num = 12; // its not prime
  int count = 0;
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      count++;
    }
  }

  if (count == 2) {
    print("its prime");
  } else {
    print("its not prime number");
  }
}
