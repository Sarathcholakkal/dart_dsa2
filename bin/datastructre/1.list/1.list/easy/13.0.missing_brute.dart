//! find missing number from 1 to n

//? time complexcity at wrost case (n*n)T

void main() {
  List<int> nums = [1, 2, 4, 5];
  int n = 5;
  int missing = 0;

  for (int i = 1; i <= n; i++) {
    int flag = 0;
    for (int j = 0; j < n - 1; j++) {
      // one number is missing that reason n-1

      if (i == nums[j]) {
        flag = 1;
      }
    }
    if (flag == 0) {
      missing = i;
    }
  }
  print(missing);
}
