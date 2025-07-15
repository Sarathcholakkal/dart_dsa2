import 'dart:developer';
import 'dart:vmservice_io';

class MaxHeap {
  List<int> heap = [];
  MaxHeap();

  MaxHeap.list(List<int> arr) {
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
      shiftDown(i);
    }
  }

  void shiftDown(int parentindex) {
    int endindex = heap.length - 1;
    int leftindex = leftchild(parentindex);

    while (leftindex <= endindex) {
      int rightindex = rightchild(parentindex);
      int indextoshift = leftindex;

      if (rightindex <= endindex && heap[rightindex] > heap[leftindex]) {
        indextoshift = rightindex;
      }

      if (heap[parentindex] >= heap[indextoshift]) {
        break;
      }

      swap(heap, parentindex, indextoshift);
      parentindex = indextoshift;
      leftindex = leftchild(parentindex);
    }
  }

  void shiftUp(int childindex) {
    int parentindex = parent(childindex);
    while (childindex > 0 && heap[parentindex] < heap[childindex]) {
      swap(heap, parentindex, childindex);
      childindex = parentindex;
      parentindex = parent(childindex);
    }
  }

  int remove() {
    swap(heap, 0, heap.length - 1);
    int maxvalue = heap.removeAt(heap.length - 1);
    if (heap.isNotEmpty) shiftDown(0);
    return maxvalue;
  }

  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
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
}

void main() {
  List<int> arr = [5, 3, 8, 4, 2, 7, 1];
  // MaxHeap maxHeap = MaxHeap.list(arr);
  Mheap maxHeap = Mheap.list(arr);
  print("Heap: ");
  maxHeap.display();
  print("Sorted array using Heap Sort: ");
  print(maxHeap.heapSort());
}

class Mheap {
  List<int> heap = [];
  Mheap();
  Mheap.list(List<int> list) {
    // build call
    buildHeap(list);
  }

  // parent
  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  //left child
  int leftchild(int index) {
    return (index * 2) + 1;
  }

  //right child
  int rightchild(int index) {
    return (index * 2) + 2;
  }

  //swap
  void swap(int i, int j, List<int> heap) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  // shfit down

  void shiftdown(int parentindex) {
    int endindex = heap.length - 1;
    int leftindex = leftchild(parentindex);
    while (leftindex <= endindex) {
      int rightindex = rightchild(parentindex);
      int indextoshift = leftindex;
      if (rightindex <= endindex && heap[rightindex] > heap[leftindex]) {
        indextoshift = rightindex;
      }
      if (heap[indextoshift] < heap[parentindex]) {
        break;
      }
      swap(indextoshift, parentindex, heap);
      parentindex = indextoshift;
      leftindex = leftchild(parentindex);
    }
  }

  //shift up

  void shiftup(int childindex) {
    int parentindex = parent(childindex);
    while (childindex > 0 && heap[childindex] > heap[parentindex]) {
      swap(childindex, parentindex, heap);
      childindex = parentindex;
      parentindex = parent(childindex);
    }
  }

  //imp buil heap

  void buildHeap(List<int> arr) {
    heap = arr.toList();
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  // add

  void addheap(int val) {
    heap.add(val);
    shiftup(heap.length - 1);
  }

  //remove
  int remove() {
    if (heap.isNotEmpty) swap(0, heap.length - 1, heap);
    int maxvalue = heap.removeAt(heap.length - 1);
    if (heap.isNotEmpty) shiftdown(0);
    return maxvalue;
  }

  //peak
  int peak() {
    return heap[0];
  }
  //heap sort

  List<int> heapSort() {
    List<int> sortedlist = [];
    while (heap.isNotEmpty) {
      sortedlist.add(remove());
    }
    return sortedlist;
  }

  //display
  void display() {
    print(heap);
  }
}
