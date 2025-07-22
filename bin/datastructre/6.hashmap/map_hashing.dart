void main() {
  // Hardcoded list of integers
  List<int> arr = [1, 2, 3, 2, 3, 3, 4, 1, 2];

  // Pre-compute frequency map
  Map<int, int> freq = {};
  for (var num in arr) {
    freq[num] = (freq[num] ?? 0) + 1;
  }

  // Hardcoded queries
  List<int> queries = [3, 2, 5, 1];

  // Process queries
  for (var number in queries) {
    print('Count of $number: ${freq[number] ?? 0}');
  }
}
