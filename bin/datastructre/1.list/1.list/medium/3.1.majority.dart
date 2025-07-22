void main() {
  List<int> nums = [1, 1, 2, 3, 4, 4, 4, 4, 4, 6, 6, 6];
  int n = nums.length;

  Map<int, int> hashmap = {};

  for (int i = 0; i < nums.length; i++) {
    hashmap[nums[i]] = (hashmap[nums[i]] ?? 0) + 1;
  }

  for (var entry in hashmap.entries) {
    if (entry.value > n ~/ 2) {
      print(entry.key);
    }
  }
}


//! iterate over map  in dart took O(n)T  so total time complexcity of map O(2n)T