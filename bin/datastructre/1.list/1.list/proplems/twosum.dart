List<int> twosum(List<int> arr, int target) {
  Set<int> set = {};

  for (int i = 0; i < arr.length; i++) {
    int match = target - arr[i];
    if (arr.contains(match)) {
      return [arr[i], match];
    } else {
      set.add(arr[i]);
    }
  }
  return [-1, -1];
}

void main() {
  List<int> numbers = [2, 7, 11, 15];
  int target = 9;

  List<int> result = twosum(numbers, target);
  print("Two sum result: $result");
}
