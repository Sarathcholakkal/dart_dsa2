//! remove duplicates

void main() {
  List<int> list = [1, 2, 5, 5, 6, 32, 12];
  removeDupln2complexcity(List.of(list));
  removeDupliwithNcomplexcity(List.of(list));
  removeduplinlogncomplexcity(List.of(list));
  removedupnaivewayn2complexcity(List.of(list));
  removeduplicateusinghashlist(List.of(list));
}

void removeDupln2complexcity(List<int> list) {
  List<int> result = [];
  for (int i = 0; i < list.length; i++) {
    if (!result.contains(list[i])) {
      result.add(list[i]);
    }
  }
  print("removeDupln2complexcity:$result");
}

void removeDupliwithNcomplexcity(List<int> list) {
  Map<int, bool> seen = {};
  List<int> uniq = [];
  for (int i = 0; i < list.length; i++) {
    if (seen[list[i]] != true) {
      uniq.add(list[i]);
      seen[list[i]] = true;
    }
  }

  print("removeDupliwithNcomplexcity:$uniq");
}

void removeduplinlogncomplexcity(List<int> list) {
  list.sort();

  int j = 0;
  for (int i = 1; i < list.length; i++) {
    if (list[i] != list[j]) {
      list[j + 1] = list[i];
      j++;
    }
  }

  list.length = j + 1;
  print("Removeduplinlogncomplexcit:$list");
}

void removedupnaivewayn2complexcity(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    bool isdup = false;
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] == list[j]) {
        isdup = true;
        break;
      }
    }

    if (isdup) {
      list.removeAt(i);
      i--;
    }
  }

  print("naive way:$list");
}

void removeduplicateusinghashlist(List<int> list) {
  int largest = -1 << 31;

  for (int i = 0; i < list.length; i++) {
    if (largest < list[i]) {
      largest = list[i];
    }
  }
  List<int> hashlist = List.filled(largest + 1, 0);

  for (int i = 0; i < list.length; i++) {
    hashlist[list[i]]++;
  }

  List<int> result = [];
  for (int i = 0; i < list.length; i++) {
    if (hashlist[list[i]] == 1) {
      result.add(list[i]);
    }
  }

  print("the unique using hashlist:$list");
}
