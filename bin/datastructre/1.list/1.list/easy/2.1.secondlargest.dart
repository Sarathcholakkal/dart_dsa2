void main() {
  List<int> arr = [2, 3, 56, 7, 82, 9, 11, 3];

  //! efficient solution which took only n timecomplexcity , if someone become largest ,old largest would be seocnd largest;

  int efflargest = arr[0];
  int effsecoondlargest = arr[0];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > efflargest) {
      effsecoondlargest = efflargest;
      efflargest = arr[i];
    }
  }
  print(effsecoondlargest);
}
