import 'dart:mirrors';

import 'maxheap.dart';

class MaxHeap {
  List<int> heap = [];
  MaxHeap();
  MaxHeap.list(List<int> arr) {
    buildheap(arr);
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  int left(int index) {
    return (index * 2) + 1;
  }

  int righ(int index) {
    return (index * 2) + 2;
  }

  void swap(List<int> heap, int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  void buildheap(List<int> arr) {
    heap = arr.toList();
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void shiftdown(int parentindex) {
    int endindex = heap.length - 1;
    int leftindex = left(parentindex);
    while (leftindex <= endindex) {
      int rightindex = righ(parentindex);
      int indextoshift = leftindex;
      if (rightindex <= endindex && heap[rightindex] > heap[leftindex]) {
        indextoshift = rightindex;
      }
      if (heap[rightindex] < heap[parentindex]) {
        break;
      }
      swap(heap, parentindex, indextoshift);
      parentindex = indextoshift;
      leftindex = left(parentindex);
    }
  }

  void shiftup(int childindex) {
    int parentindex = parent(childindex);
    while (childindex > 0 && heap[childindex] > heap[parentindex]) {
      swap(heap, childindex, parentindex);
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

  void insert(int data) {
    heap.add(data);
    shiftup(heap.length - 1);
  }

  int peek() {
    return heap[0];
  }

  List<int> heapsort() {
    List<int> sortlist = [];
    while (heap.isNotEmpty) {
      sortlist.add(remove());
    }
    return sortlist;
  }
}
