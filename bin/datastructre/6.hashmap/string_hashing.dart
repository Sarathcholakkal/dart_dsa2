import 'dart:io';

void main() {
  // Read input string
  print("enter a stirng");
  String s = stdin.readLineSync()!;

  // Precompute character frequencies using a list
  List<int> hash = List.filled(256, 0);
  for (int i = 0; i < s.length; i++) {
    hash[s.codeUnitAt(i)]++;
  }
  print("enter query count");
  // Read number of queries
  int q = int.parse(stdin.readLineSync()!);

  while (q-- > 0) {
    // Read character query
    stdout.writeln("enter elemetn");
    String c = stdin.readLineSync()!;
    // Fetch and print frequency using ASCII index
    print(hash[c.codeUnitAt(0)]);
  }
}
