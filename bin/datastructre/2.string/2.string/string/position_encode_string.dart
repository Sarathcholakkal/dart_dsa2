void main() {
  var result = stringConverter(1, "abc");
  print(result);
}

String stringConverter(int key, String str) {
  int newKey = key % 26;

  List<int> codeList = List.filled(str.length, 0);

  for (int i = 0; i < str.length; i++) {
    int letterposition = str.codeUnitAt(i) + newKey;

    if (letterposition <= 122) {
      codeList[i] = letterposition;
    } else {
      codeList[i] = (letterposition % 122) + 96;
    }
  }

  return String.fromCharCodes(codeList);
}
