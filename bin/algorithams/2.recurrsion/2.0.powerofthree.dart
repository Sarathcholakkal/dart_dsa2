bool isPowerOfThree(int n) {
  int num = 1;
  while (num < n) {
    num *= 3;
  }
  return num == n;
}

void main() {
  int test = 27; // You can change this to any number for testing

  if (isPowerOfThree(test)) {
    print('$test is a power of 3.');
  } else {
    print('$test is NOT a power of 3.');
  }
}
