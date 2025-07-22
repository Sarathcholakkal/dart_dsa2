import '../../../asked/review/week14_review/test1.dart';

void main() {
  List<int> arr = [1, 2, 0, 3, 0, 5, 0, 8, 0, 6];
  //! brute force approch to move all zero to end ,using addtional space  O(n) space and O(2n)t time

  List<int> temp = [];

  for (int i = 0; i < arr.length; i++) {
    //? took O(n)T O(n)S
    if (arr[i] != 0) {
      temp.add(arr[i]);
    }
  }

  for (int i = 0; i < temp.length; i++) {
    //? took O(x)T where x is number of  non zero elements
    arr[i] = temp[i];
  }

  for (int i = temp.length; i < arr.length; i++) {
    //?  O(n-x)T
    arr[i] = 0;
  }

  print(arr); //? total    O(2n)T and O(n)s

  //! effecinet solustion using two pointer

  List<int> list = [3, 23, 5, 0, 6, 7, 8, 33, 5, 0];

  int j = -1;

  for (int i = 0; i < list.length; i++) {
    //? took O(x)T  where x is  the first zero element appearn in array  length
    if (list[i] == 0) {
      j = i;
      break;
    }
  }
  if (j == -1) {
    print(list);
    return;
  }

  for (int i = j + 1; i < list.length; i++) {
    //? took O(n-x)T time complexcity
    if (list[i] != 0) {
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
      j++;
    }
  }

  print(list);

  //! total time complexcity is : O(x)T + O(n-x)T   => O(n)T
}
