void main() {
  List<int> arr = [20, 30, 110, 56, 23, 65, 87];

  quickSort(arr, 0, arr.length - 1);

  print(arr); // Output: [20, 23, 30, 56, 65, 87, 110]
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

int partition(List<int> arr, int lb, int ub) {
  int pivot = arr[lb];
  int start = lb;
  int end = ub;

  while (start < end) {
    while (start < ub && arr[start] <= pivot) {
      start++;
    }
    while (arr[end] > pivot) {
      end--;
    }
    if (start < end) {
      swap(arr, start, end);
    }
  }

  swap(arr, lb, end);
  return end;
}

void quickSort(List<int> arr, int lb, int ub) {
  if (lb < ub) {
    int loc = partition(arr, lb, ub);
    quickSort(arr, lb, loc - 1);
    quickSort(arr, loc + 1, ub);
  }
}
