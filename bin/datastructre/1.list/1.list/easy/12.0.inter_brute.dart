//! find interception of arry brute force approach  will take time complexcity of O(n1*n2)T where both n1 and  n2 are lenght of respective array

void main() {
  List<int> arr1 = [1, 2, 2, 3, 3, 4, 5, 6];
  List<int> arr2 = [2, 3, 3, 4, 6, 6, 7];
  List<int> visited = List.filled(arr2.length, 0);
  List<int> inter = [];

  for (int i = 0; i < arr1.length; i++) {
    for (int j = 0; j < arr2.length; j++) {
      if (arr1[i] == arr2[j] && visited[j] == 0) {
        inter.add(arr1[i]);
        visited[j] = 1;
        break;
      }
      if (arr2[j] > arr1[i]) {
        break;
      }
    }
  }
  print(inter);
}
