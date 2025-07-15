import 'dart:io';

class MinHeap {
  List<int> heap = [];
  MinHeap();

  MinHeap.list(List<int> arr) {
    buildHeap(arr);
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  int leftchild(int index) {
    return (index * 2) + 1;
  }

  int rightchild(int index) {
    return (index * 2) + 2;
  }

  void swap(List<int> heap, int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  void buildHeap(List<int> arr) {
    heap = arr.toList();
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void shiftdown(int parentindex) {
    int endindex = heap.length - 1;
    int leftindex = leftchild(parentindex);

    while (leftindex <= endindex) {
      int rightindex = rightchild(parentindex);
      int indextoshift = leftindex;

      if (rightindex <= endindex && heap[rightindex] < heap[leftindex]) {
        indextoshift = rightindex;
      }

      if (heap[parentindex] <= heap[indextoshift]) {
        break;
      }

      swap(heap, indextoshift, parentindex);
      parentindex = indextoshift;
      leftindex = leftchild(parentindex);
    }
  }

  void shiftup(int childindex) {
    int parentindex = parent(childindex);
    while (childindex > 0 && heap[parentindex] > heap[childindex]) {
      swap(heap, parentindex, childindex);
      childindex = parentindex;
      parentindex = parent(childindex);
    }
  }

  int remove() {
    swap(heap, 0, heap.length - 1);
    int minvalue = heap.removeAt(heap.length - 1);
    if (heap.isNotEmpty) shiftdown(0);
    return minvalue;
  }

  void insert(int value) {
    heap.add(value);
    shiftup(heap.length - 1);
  }

  void display() {
    print(heap);
  }

  List<int> heapSort() {
    List<int> sortedList = [];
    while (heap.isNotEmpty) {
      sortedList.add(remove());
    }
    return sortedList;
  }

  int peek() {
    return heap[0];
  }
}

void main() {
  List<int> arr = [5, 3, 8, 4, 2, 7, 1];
  // MinHeap minHeap = MinHeap.list(arr);
  Minh minHeap = Minh.list(arr);

  print("Heap: ");
  minHeap.display();
  print("Sorted array using Heap Sort: ");
  print(minHeap.heapSort());
}

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

class Minh {
  List<int> heap = [];
  Minh();
  Minh.list(List<int> arr) {
    // call build heap
    buildHeap(arr);
  }

  // paret
  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  //left
  int leftchild(int index) {
    return (index * 2) + 1;
  }

  //righ
  int righchild(int index) {
    return (index * 2) + 2;
  }

  //swap
  void swap(int i, int j, List<int> heap) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  //shiftdwon
  void shiftdown(int parentindex) {
    int endindex = heap.length - 1;
    int leftindex = leftchild(parentindex);
    while (leftindex <= endindex) {
      int rightindex = righchild(parentindex);
      int indextoshit = leftindex;
      if (rightindex <= endindex && heap[rightindex] < heap[leftindex]) {
        indextoshit = rightindex;
      }
      if (heap[indextoshit] > heap[parentindex]) {
        break;
      }

      swap(indextoshit, parentindex, heap);
      parentindex = indextoshit;
      leftindex = leftchild(parentindex);
    }
  }

  //shfitup

  void shiftup(int childindex) {
    int parentindex = parent(childindex);
    while (childindex > 0 && heap[childindex] <= heap[parentindex]) {
      swap(childindex, parentindex, heap);
      childindex = parentindex;
      parentindex = parent(childindex);
    }
  }

  //build heap
  void buildHeap(List<int> arr) {
    heap = arr.toList();
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  // add
  void add(int val) {
    heap.add(val);
    shiftup(heap.length - 1);
  }

  //remove
  int remove() {
    if (heap.isNotEmpty) swap(0, heap.length - 1, heap);
    int minvalue = heap.removeAt(heap.length - 1);
    if (heap.isNotEmpty) shiftdown(0);
    return minvalue;
  }

  // peak
  int peak() {
    return heap[0];
  }

  //displya
  void display() {
    print(heap);
  }

  //heap  sort

  List<int> heapSort() {
    List<int> sortedlist = [];
    while (heap.isNotEmpty) {
      sortedlist.add(remove());
    }
    return sortedlist;
  }
}
