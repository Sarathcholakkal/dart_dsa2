//! how to merge two sorted array

// List<int> mergesortedList(List<int> nums1, List<int> nums2) {
//   int m = nums1.length;
//   int n = nums2.length;
//   int l = m + n;

//   List<int> nums3 = List.filled(l, 0);
//   int i = 0;
//   int j = 0;
//   int k = 0;

//   while (i < m && j < n) {
//     if (nums1[i] < nums2[j]) {
//       nums3[k] = nums1[i];
//       i++;
//       k++;
//     } else {
//       nums3[k] = nums2[j];
//       j++;
//       k++;
//     }
//   }

//   while (i < m) {
//     nums3[k] = nums1[i];
//     i++;
//     k++;
//   }
//   while (j < n) {
//     nums3[k] = nums1[j];
//     j++;
//     k++;
//   }
//   return nums3;
// }

// void main() {
//   List<int> list1 = [1, 5, 9, 11, 15];
//   List<int> list2 = [2, 4, 13, 99, 100];

//   var result = mergesortedList(list2, list1);

//   print(result);
// }
