// void main() {
//   // Read input value for n
//   int n = int.parse(stdin.readLineSync()!);
//   List<int> arr = List.filled(n, 0);

//   // Read n elements into the array
//   for (int i = 0; i < n; i++) {
//     arr[i] = int.parse(stdin.readLineSync()!);
//   }

//   // Precompute hash
//   List<int> hash = List.filled(13, 0);
//   for (int i = 0; i < n; i++) {
//     hash[arr[i]] += 1;
//   }

//   // Read number of queries
//   int q = int.parse(stdin.readLineSync()!);
//   while (q-- > 0) {
//     int number = int.parse(stdin.readLineSync()!);
//     // Fetch and print result
//     print(hash[number]);
//   }
// }
void main() {
  List<int> arr = [1, 2, 3, 1, 2, 4];
  int n = arr.length;

  List<int> hash = List.filled(13, 0); //! hash array or frequent array

  // precompute hash
  for (int i = 0; i < n; i++) {
    hash[arr[i]] += 1;
  }
  List<int> checkList = [2, 1, 4, 6, 7]; // number of queries in list

  for (int i = 0; i < checkList.length; i++) {
    int check = checkList[i];
    print(hash[check]);
  }
}
