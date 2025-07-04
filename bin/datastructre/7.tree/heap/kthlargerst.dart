import 'package:collection/collection.dart';

void main() {
  List<int> numbers = [7, 10, 4, 3, 20, 15];
  int k = 3;

  int result = findKthLargest(numbers, k);
  print("The $k-th smallest element is: $result");
}

int findKthLargest(List<int> nums, int k) {
  final heap = HeapPriorityQueue<int>(); // min-heap

  for (int num in nums) {
    heap.add(num);
    if (heap.length > k) {
      heap.removeFirst(); // remove smallest
    }
  }

  return heap.first; // kth largest
}

//? implement max heap using inbuild structure

// void main() {
//   final maxHeap = HeapPriorityQueue<int>((a, b) => b.compareTo(a));

//   maxHeap.addAll([5, 1, 10, 3, 7]);

//   while (maxHeap.isNotEmpty) {
//     print(maxHeap.removeFirst()); // Output: 10, 7, 5, 3, 1
//   }
// }
