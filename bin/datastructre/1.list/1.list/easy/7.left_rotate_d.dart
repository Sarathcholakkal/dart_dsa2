void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7];

  //! rotate arr by d place brute force took time complexcity of O(2n) and space complexcity  O(2n)

  int d = 3;

  List<int> temp = List.filled(d, 0);

  for (int i = 0; i < d; i++) {
    temp[i] = arr[i];
  }

  for (int i = d; i < arr.length; i++) {
    arr[i - d] = arr[i];
  }

  int j = 0;
  for (int i = arr.length - d; i < arr.length; i++) {
    arr[i] = temp[j++];
  }

  // print(arr);

  //! better solution    assign value to of i to (n-d)+i  used math calculation compare to brute force
  //!  total time complexcity  O(n+d)T

  List<int> list = [1, 2, 3, 4, 5, 6, 7];
  // save to temp  first d element
  List<int> temp1 = List.filled(d, 0);

  for (int i = 0; i < d; i++) {
    temp1[i] = list[i]; //time complexcity  O(d)T
  }
  // move remaing element to first index

  for (int i = d; i < arr.length; i++) {
    list[i - d] = list[i]; //time complexcity  O(n-d)T
  }
  // this step only changes

  for (int i = 0; i < d; i++) {
    list[(list.length - d) + i] = temp1[i]; //time complexcity  O(d)T
  }

  // print(list);

  //!efficient solution   change time complexiciy to

  void reverse(int start, int end, List<int> arr) {
    while (start <= end) {
      int temp = arr[start];
      arr[start] = arr[end];
      arr[end] = temp;
      start++;
      end--;
    }
  }

  List<int> newlist = [1, 2, 3, 4, 5, 6, 7, 8];
  int t = 4;
  int end = newlist.length - 1;
  int start = 0;

  reverse(start, t - 1, newlist);
  reverse(t, end, newlist);
  reverse(0, end, newlist);
  print(newlist);
}
