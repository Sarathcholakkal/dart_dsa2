void main() {
  List<int> arr = [1, 0, 2, 0, 1, 2, 1, 2, 0, 0, 0, 0, 1];
  int zeros = 0;
  int ones = 0;
  int twos = 0;

  for (int i = 0; i < arr.length; i++) {
    //! O(n)T
    if (arr[i] == 0) {
      zeros++;
    } else if (arr[i] == 1) {
      ones++;
    } else {
      twos++;
    }

    for (int i = 0; i < zeros; i++) {
      arr[i] = 0;
    }
    for (int i = zeros; i < zeros + ones; i++) {
      arr[i] = 1;
    }

    for (int i = zeros + ones; i < zeros + ones + twos; i++) {
      ///! three for loop together take O(n)T
      arr[i] = 2;
    }
  }
  print(
      arr); // took time complexcit of nlogn  need more optimal//! total complexcity O(2n)T
}
