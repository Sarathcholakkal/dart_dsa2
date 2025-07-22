// //! remove duplicate using hashmap

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 2, 5, 3, 6, 1, 7];
//   List<int> uniqueNumbers = removeDuplicates(numbers);

//   print("Original List: $numbers");
//   print("List after removing duplicates: $uniqueNumbers");
// }

// List<int> removeDuplicates(List<int> numbers) {
//   Map<int, bool> hashTable = {};
//   List<int> uniqunumber = [];
//   for (int num in numbers) {
//     if (!hashTable.containsKey(num)) {
//       hashTable[num] = true;
//       uniqunumber.add(num);
//     }
//   }
//   return uniqunumber;
// }

//! without extra space

void removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return;

  Map<int, bool> seen = {}; // Map to track seen elements
  int j = 0; // Pointer to place unique elements

  for (int i = 0; i < nums.length; i++) {
    if (!seen.containsKey(nums[i])) {
      seen[nums[i]] = true; // Mark element as seen
      nums[j] = nums[i]; // Move unique element to correct position
      j++;
    }
  }

  // Resize the list to remove trailing duplicates
  nums.length = j;
}

void main() {
  List<int> nums = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
  removeDuplicates(nums);
  print(nums); // Output: [1, 2, 3, 4, 5, 6, 7]
}
