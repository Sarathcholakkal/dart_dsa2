// stdout.write("Enter the size of an array: ");
// n = int.parse(stdin.readLineSync()!);

void main() {
  int limit = 10;
  fibinoccinormal(limit);
  fibiwithlist(limit);
  fibirecurrsive(limit);
}

void fibinoccinormal(int limit) {
  int a = 0;
  int b = 1;
  for (int i = 2; i < limit; i++) {
    int next = a + b;
    print(next);
    a = b;
    b = next;
  }
}

void fibiwithlist(int limit) {
  List<int> list = [0, 1];

  for (int i = 2; i < limit; i++) {
    list.add(list[i - 1] + list[i - 2]);
  }
  print("fibiwithlist:$list");
}

void fibirecurrsive(int limit) {
  List<int> result = [];
  int fib(int n) {
    if (n <= 1) {
      return n;
    }
    return fib(n - 1) + fib(n - 2);
  }

  for (int i = 0; i < limit; i++) {
    result.add(fib(i));
  }
  print(result);
}
