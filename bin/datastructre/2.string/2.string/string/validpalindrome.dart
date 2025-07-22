class Solution {
  bool isPalindrome(String s) {
    int len = s.length;

    StringBuffer pureString = StringBuffer();
    for (int i = 0; i < len; i++) {
      int char = s.codeUnitAt(i);
      if (char >= 97 && char <= 122 || (char >= 65 && char <= 90)) {
        pureString.write(String.fromCharCode(char));
      }
    }

    String filteredString = pureString.toString().toLowerCase();
    int start = 0;
    int end = filteredString.length - 1;
    while (start < end) {
      if (filteredString[start] != filteredString[end]) {
        return false;
      } else {
        start++;
        end--;
      }
    }
    return true;
  }
}
//"0P"  test case failed not mangaed the digits, correct code avilable on leetcode
