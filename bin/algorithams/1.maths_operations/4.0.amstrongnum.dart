import 'dart:math';

//An Armstrong number (also known as a Narcissistic number) is a number that is equal to the sum of its own digits, each raised to the power of the number of digits.

// 153 = 1^3 + 5^3 + 3^3
//     = 1 + 125 + 27
//     = 153 ✅
// Explanation:
// Extract digits: The code repeatedly extracts the last digit of the number using the modulus operator (%).

// Cube each digit: Each extracted digit is raised to the power of 3 using pow(digit, 3).

// Sum the cubes: The cubes of the digits are added to the sum variable.

// Compare: After processing all digits, the sum is compared to the original number. If they are equal, it confirms the number is an Armstrong number.

class Solution {
  bool isArmstrong(int number) {
    int dup = number;
    int sum = 0;
    int count = 0;
    int org = number;
    while (org > 0) {
      count += 1;
      org ~/= 10;
    }
    while (dup > 0) {
      int digit = dup % 10;
      int qub = pow(digit, count).toInt();
      sum += qub;
      dup ~/= 10;
    }
    print(sum);
    return sum == number;
  }
}

void main() {
  Solution solution = Solution();

  // Test cases
  int n = 153; // Change to test other numbers
  print('$n is Armstrong? ${solution.isArmstrong(n)}'); //true

  n = 9474;
  print('$n is Armstrong? ${solution.isArmstrong(n)}'); //true

  n = 123;
  print('$n is Armstrong? ${solution.isArmstrong(n)}'); //false
}
