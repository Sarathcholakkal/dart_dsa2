//! 26. Remove Duplicates from Sorted Array  leetcode question

void main() {
  List<int> arr = [1, 1, 2, 2, 3, 3, 3];

  // Use a Set to remove duplicates
  Set<int> set = {};

  for (int i = 0; i < arr.length; i++) {
    set.add(arr[i]);
  }

  // Copy unique values back to arr
  int j = 0;
  for (var i in set) {
    arr[j++] = i;
  }

  // Resize the list to contain only unique elements
  arr.length = j;

  print(arr); // Output: [1, 2, 3]

  
}
//remove duplicate from give array  using set   time complexcity O(2N)T
