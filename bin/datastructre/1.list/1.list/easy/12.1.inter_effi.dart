//! efficeint solution doesnt take any space , but timecomplecit would be O(n1+n2)T where  n1 and n2 lenght of given arrays
void main() {
  List<int> arr1 = [1, 2, 2, 3, 3, 4, 5, 6];
  List<int> arr2 = [2, 3, 3, 4, 6, 6, 7];

  List<int> inter = [];

  int i = 0;
  int j = 0;

  int n = arr1.length;
  int m = arr2.length;

  while (i < n && j < m) {
    if (arr1[i] < arr2[j]) {
      i++;
    } else if (arr2[j] < arr1[i]) {
      j++;
    } else {
      inter.add(arr2[j]);
      i++;
      j++;
    }
  }

  print(inter);
}
