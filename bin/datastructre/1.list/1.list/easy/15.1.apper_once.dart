import 'dart:math';

void main() {
  List<int> arr = [1, 1, 2, 2, 3, 3, 4, 4, 5, 6, 6, 7, 7];
  int num = 0;
  int maxi = 0;
  for (int i = 0; i < arr.length; i++) {
    maxi = max(maxi, arr[i]);
  }
  List<int> hash = List.filled(maxi + 1, 0);

  for (int i = 0; i < arr.length; i++) {
    hash[arr[i]]++;
  }

  for (int i = 0; i < hash.length; i++) {
    if (hash[i] == 1) {
      num = i;
    }
  }
  print(num);
}

//! will took time complexicity on  O(m+n)T , where the m is maxi number and n is give arr size
//  we  can use map instead of hash array to get better time complexcity
