// class MinHeap {
//   List<int> heap = [];
//   MinHeap();

//   MinHeap.list(List<int> arr) {
//     buildHeap(arr);
//   }

//   int parent(int index) {
//     return (index - 1) ~/ 2;
//   }

//   int leftchild(int index) {
//     return (index * 2) + 1;
//   }

//   int rightchild(int index) {
//     return (index * 2) + 2;
//   }

//   void swap(List<int> heap, int i, int j) {
//     int temp = heap[i];
//     heap[i] = heap[j];
//     heap[j] = temp;
//   }

//   void buildHeap(List<int> arr) {
//     heap = arr.toList();
//     for (int i = parent(heap.length - 1); i >= 0; i--) {
//       shiftdown(i);
//     }
//   }

//   void shiftdown(int parentindex) {
//     int endindex = heap.length - 1;
//     int leftindex = leftchild(parentindex);

//     while (leftindex <= endindex) {
//       int rightindex = rightchild(parentindex);
//       int indextoshift = leftindex;

//       if (rightindex <= endindex && heap[rightindex] < heap[leftindex]) {
//         indextoshift = rightindex;
//       }

//       if (heap[parentindex] <= heap[indextoshift]) {
//         break;
//       }

//       swap(heap, indextoshift, parentindex);
//       parentindex = indextoshift;
//       leftindex = leftchild(parentindex);
//     }
//   }

//   void shiftup(int childindex) {
//     int parentindex = parent(childindex);
//     while (childindex > 0 && heap[parentindex] > heap[childindex]) {
//       swap(heap, parentindex, childindex);
//       childindex = parentindex;
//       parentindex = parent(childindex);
//     }
//   }

//   int remove() {
//     swap(heap, 0, heap.length - 1);
//     int minvalue = heap.removeAt(heap.length - 1);
//     if (heap.isNotEmpty) shiftdown(0);
//     return minvalue;
//   }

//   void insert(int value) {
//     heap.add(value);
//     shiftup(heap.length - 1);
//   }

//   void display() {
//     print(heap);
//   }

//   List<int> heapSort() {
//     List<int> sortedList = [];
//     while (heap.isNotEmpty) {
//       sortedList.add(remove());
//     }
//     return sortedList;
//   }

//   int peek() {
//     return heap[0];
//   }
// }

// void main() {
//   List<int> arr = [5, 3, 8, 4, 2, 7, 1];
//   MinHeap minHeap = MinHeap.list(arr);
//   print("Heap: ");
//   minHeap.display();
//   print("Sorted array using Heap Sort: ");
//   print(minHeap.heapsort());
// }

// Initial Heap:
//     2
//    / \
//   6   8

// After inserting 1:
//     1
//    / \
//   2   8
//  /
// 6

// After inserting 5:
//     1
//    / \
//   2   8
//  / \
// 6   5

// After inserting 15:
//     1
//    / \
//   2   8
//  / \  /
// 6   5 15

// After removing 1:
//     2
//    / \
//   5   8
//  / \
// 6   15
