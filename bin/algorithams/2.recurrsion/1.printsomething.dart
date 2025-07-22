int count = 0;

void printcount() {
  if (count == 4) {
    return;
  }
  print(count);
  count++;
  printcount();
}

void main() {
  printcount();
}


// 🔁 How Recursion Works Here
// Let’s look at what happens step-by-step:

// count = 0 → prints 0, then calls printcount()

// count = 1 → prints 1, then calls printcount()

// count = 2 → prints 2, then calls printcount()

// count = 3 → prints 3, then calls printcount()

// count = 4 → condition met (count == 4), returns


// So the output is:

// 0
// 1
// 2
// 3

// Recursion Tree for This
// Each call leads to one more recursive call, like a straight line rather than a branching tree (because there’s only one recursive call inside the function):
// printcount(0)
//   ↓
// printcount(1)
//   ↓
// printcount(2)
//   ↓
// printcount(3)
//   ↓
// printcount(4)  ← base case hit, returns