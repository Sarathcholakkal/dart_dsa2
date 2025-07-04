void main() {
  List<int> list = [2, 4, 5, 12, 5, 6, 7, 423];
  largest(list);
  secondLargest(list);
  thirdLargest(list);
  thirdlargestwithcontinue(list);
}

void largest(List<int> list) {
  int largest = -1 << 31; // min integervalue

  for (int i = 0; i < list.length; i++) {
    if (largest < list[i]) {
      largest = list[i];
    }
  }
  print(largest);
}

void secondLargest(List<int> list) {
  int largest = -1 << 31; // min integervalue
  int secondlargest = -1 << 31;

  for (int i = 0; i < list.length; i++) {
    if (largest < list[i]) {
      secondlargest = largest;
      largest = list[i];
    } else if (secondlargest < list[i] && list[i] != largest) {
      secondlargest = list[i];
    }
  }

  print('the second largest is:$secondlargest');
}

void thirdLargest(List<int> list) {
  int largest = -1 << 31; // min integervalue
  int secondlargest = -1 << 31;
  int thirdlagrest = -1 << 31;

  for (int i = 0; i < list.length; i++) {
    if (largest < list[i]) {
      thirdlagrest = secondlargest;
      secondlargest = largest;
      largest = list[i];
    } else if (secondlargest < list[i] && list[i] != largest) {
      thirdlagrest = secondlargest;
      secondlargest = list[i];
    } else if (thirdlagrest < list[i] && list[i] != secondlargest) {
      thirdlagrest = list[i];
    }
  }

  print("third largest:$thirdlagrest");
}

void thirdlargestwithcontinue(List<int> list) {
  int largest = -1 << 31;
  int secondLargest = -1 << 31;
  int thirdLargest = -1 << 31;

  for (int el in list) {
    if (el == largest || el == secondLargest || el == thirdLargest) {
      continue;
    }
    if (el > largest) {
      thirdLargest = secondLargest;
      secondLargest = largest;
      largest = el;
    } else if (el > secondLargest) {
      thirdLargest = secondLargest;
      secondLargest = el;
    } else if (el > thirdLargest) {
      thirdLargest = el;
    }
  }
  print(
    'largest: $largest secondlargest:$secondLargest thirdlargest:$thirdLargest',
  );
}
