// //!  https://www.youtube.com/watch?v=-qjc4fYsZTU&t=137s

// void mergeSort(List<int> arr, int numberOfElements) {
//   if (numberOfElements < 2) {
//     return;
//   }

//   // Find the middle position and create left and right partitions
//   int mid = numberOfElements ~/ 2;

//   List<int> leftArr = List.filled(mid, 0);
//   List<int> rightArr = List.filled(numberOfElements - mid, 0);

//   // Fill up the partitions
//   for (int i = 0; i < mid; i++) {
//     leftArr[i] = arr[i];
//   }

//   for (int i = mid; i < numberOfElements; i++) {
//     rightArr[i - mid] = arr[i];
//   }

//   // Apply merge sort on the left partition
//   mergeSort(leftArr, mid);

//   // Apply merge sort on the right partition
//   mergeSort(rightArr, numberOfElements - mid);

//   // Finally merge the partitions
//   merge(arr, leftArr, rightArr, mid, numberOfElements - mid);
// }

// void merge(List<int> arr, List<int> leftArr, List<int> rightArr, int leftSize,
//     int rightSize) {
//   int i = 0, j = 0, k = 0;

//   while (i < leftSize && j < rightSize) {
//     if (leftArr[i] <= rightArr[j]) {
//       arr[k++] = leftArr[i++];
//     } else {
//       arr[k++] = rightArr[j++];
//     }
//   }

//   while (i < leftSize) {
//     arr[k++] = leftArr[i++];
//   }

//   while (j < rightSize) {
//     arr[k++] = rightArr[j++];
//   }
// }

void main() {
  List<int> arr = [38, 27, 43, 3, 9, 82, 10]; // Fixed input array
  print("Original array: $arr");

  mergeSort(arr, arr.length);

  print("Sorted array: $arr");
}

void mergeSort(List<int> arr, int numberofElements) {
  if (numberofElements < 2) {
    return;
  }

  int mid = numberofElements ~/ 2;

  List<int> leftarr = List.filled(mid, 0);
  List<int> rightarr = List.filled(numberofElements - mid, 0);

  for (int i = 0; i < mid; i++) {
    leftarr[i] = arr[i];
  }

  for (int i = mid; i < numberofElements; i++) {
    rightarr[i - mid] = arr[i];
  }

  mergeSort(leftarr, mid);
  mergeSort(rightarr, numberofElements - mid);
  merge(arr, leftarr, rightarr, mid, numberofElements - mid);
}

void merge(List<int> arr, List<int> leftarr, List<int> rightarr, int leftsize,
    int rightsize) {
  int i = 0;
  int j = 0;
  int k = 0;
  while (i < leftsize && j < rightsize) {
    if (leftarr[i] <= rightarr[j]) {
      arr[k++] = leftarr[i++];
    } else {
      arr[k++] = rightarr[j++];
    }
  }

  while (i < leftsize) {
    arr[k++] = leftarr[i++];
  }
  while (j < rightsize) {
    arr[k++] = rightarr[j++];
  }
}
