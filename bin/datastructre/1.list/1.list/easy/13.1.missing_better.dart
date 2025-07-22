//! time complexcity  O(n+n)T and space complexity O(n)S
void main() {
  List<int> nums = [1, 2, 4, 5];
  int n = 5;

  List<int> hash = List.filled(n + 1, 0);

  for (int i = 0; i < nums.length; i++) {
    hash[nums[i]] = 1;
  }

  int missing = 0;

  for (int i = 1; i <= n; i++) {
    if (hash[i] == 0) {
      missing = i;
    }
  }

  print(missing);
}
