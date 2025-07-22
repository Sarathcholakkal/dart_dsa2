// int findPartition(List<int> arr, int begin, int end) {
//   // Taking last element as the pivot
//   int pivot = arr[end];
//   int i = begin - 1; // Index of smaller element

//   for (int j = begin; j < end; j++) {
//     // If current element is smaller than the pivot
//     if (arr[j] < pivot) {
//       i++;
//       // Swap arr[i] and arr[j]
//       swap(arr, i, j);
//     }
//   }

//   // Swap arr[i+1] and arr[end] (pivot)
//   swap(arr, i + 1, end);

//   return i + 1;
// }

// // Function to swap two elements in the list
// void swap(List<int> arr, int i, int j) {
//   int temp = arr[i];
//   arr[i] = arr[j];
//   arr[j] = temp;
// }

// void quickSort(List<int> arr, int begin, int end) {
//   if (begin < end) {
//     // Find the partition
//     int partition = findPartition(arr, begin, end);

//     // Do quick sort on the left part
//     quickSort(arr, begin, partition - 1);

//     // Do quick sort on the right part
//     quickSort(arr, partition + 1, end);
//   }
// }

void main() {
  List<int> arr = [10, 7, 8, 9, 1, 5];
  quickSort(arr, 0, arr.length - 1);
  print(arr); // Output: [1, 5, 7, 8, 9, 10]
}

int findPartition(List<int> arr, int begin, int end) {
  int pivot = arr[end];
  int i = begin - 1;
  for (int j = begin; j < end; j++) {
    if (arr[j] < pivot) {
      i++;
      swap(arr, i, j);
    }
  }
  swap(arr, i + 1, end);
  return i + 1;
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void quickSort(List<int> arr, int begin, int end) {
  if (begin < end) {
    int partition = findPartition(arr, begin, end);
    quickSort(arr, begin, partition - 1);
    quickSort(arr, partition + 1, end);
  }
}
