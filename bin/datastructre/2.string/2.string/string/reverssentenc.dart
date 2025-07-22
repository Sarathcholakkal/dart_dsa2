class Solution {
  String reverseWords(String s) {
    List<String> arr = s.split('');
    int left = 0, right = 0;

    while (right < arr.length) {
      if (arr[right] == ' ') {
        _reverse(arr, left, right - 1);
        left = right + 1;
      }
      right++;
    }

    _reverse(arr, left, right - 1); // Reverse the last word
    return arr.join('');
  }

  void _reverse(List<String> arr, int left, int right) {
    while (left < right) {
      var temp = arr[left];
      arr[left++] = arr[right];
      arr[right--] = temp;
    }
  }
}

void main() {
  Solution solution = Solution();

  String input = "hello world";
  String output = solution.reverseWords(input);

  print(output); // Output: "olleh dlrow"
}
