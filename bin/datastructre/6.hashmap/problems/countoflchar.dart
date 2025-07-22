//! find the count of each char in your name

// void frequencycount(String s) {
//   List<int> freq = List.filled(26, 0);
//   s = s.toLowerCase();
//   for (int i = 0; i < s.length; i++) {
//     int index = s[i].codeUnitAt(0) - 'a'.codeUnitAt(0);
//     freq[index]++;
//   }

//   for (int i = 0; i < s.length; i++) {
//     int index = s[i].codeUnitAt(0) - 'a'.codeUnitAt(0);

//     print("freq of ${s[i]} is ${freq[index]}");
//   }
// }

void main() {
  String name = 'sarath';
  frequencyCount(name);
}

void frequencyCount(String s) {
  Map<String, int> freqmap = {};
  s = s.toLowerCase();
  for (int i = 0; i < s.length; i++) {
    String key = s[i];
    freqmap[key] = (freqmap[key] ?? 0) + 1;
  }

  for (var entry in freqmap.entries) {
    print("the freq of ${entry.key} is ${entry.value}");
  }
}
