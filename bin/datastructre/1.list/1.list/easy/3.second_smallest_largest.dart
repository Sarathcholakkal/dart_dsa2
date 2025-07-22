void main() {
  List<int> arr = [2, 4, 13, 53, 13, 1, 133, 63, 23];

  int seccondlarest = findsecondlargest(arr);
  int secondsmallest = findsecondSmallest(arr);
  print(" secondsmallest is:$secondsmallest     " +
      "secondlarest is:$seccondlarest");
}

int findsecondlargest(List<int> arr) {
  int largest = arr[0];
  int secondlargest = -1;
  for (int i = 0; i < arr.length; i++) {
    if (largest < arr[i]) {
      secondlargest = largest;
      largest = arr[i];
    } else if (arr[i] > secondlargest && arr[i] != largest) {
      secondlargest = arr[i];
    }
  }
  return secondlargest;
}

int findsecondSmallest(List<int> arr) {
  int smallest = arr[0];
  int secondsmallest = arr[0];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < smallest) {
      secondsmallest = smallest;
      smallest = arr[i];
    } else if (arr[i] < secondsmallest && arr[i] != smallest) {
      secondsmallest = arr[i];
    }
  }
  return secondsmallest;
}
