import 'dart:io';

void main() {
  // SuffixTrie newtrie = SuffixTrie("mannan");
  suff newtrie = suff("mannan");
  print(newtrie.contains('mannan'));
  print(newtrie.contains('annan'));
  print(newtrie.contains('annan'));
  print(newtrie.contains('anna'));
}

// class TrieNode {
//   Map<String, TrieNode> chileren = {};
// }

// class SuffixTrie {
//   TrieNode root = TrieNode();
//   String endsymbol = "*";

//   SuffixTrie(String str) {
//     populateSuffixTrie(str);
//   }

//   void populateSuffixTrie(String str) {
//     for (int i = 0; i < str.length; i++) {
//       insertSubStringAt(i, str);
//     }
//   }

//   void insertSubStringAt(int index, String str) {
//     TrieNode node = root;
//     for (int i = index; i < str.length; i++) {
//       String letter = str[i];
//       node.chileren.putIfAbsent(letter, () => TrieNode());
//       node = node.chileren[letter]!;
//     }
//     node.chileren[endsymbol] = TrieNode();
//   }

//   bool contains(String str) {
//     TrieNode node = root;
//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       if (!node.chileren.containsKey(letter)) {
//         return false;
//       }
//       node = node.chileren[letter]!;
//     }
//     return node.chileren.containsKey(endsymbol);
//   }
// }

class TrieNode {
  Map<String, TrieNode> chilldren = {};
}

class SuffixTrie {
  TrieNode root = TrieNode();
  String end = '*';

  SuffixTrie(String str) {
    populateSuffixTrie(str);
  }

  void populateSuffixTrie(String str) {
    for (int i = 0; i < str.length; i++) {
      insertSubStringAt(str, i);
    }
  }

  void insertSubStringAt(String str, int index) {
    TrieNode node = root;

    for (int i = index; i < str.length; i++) {
      String letter = str[i];
      node.chilldren.putIfAbsent(letter, () => TrieNode());
      node = node.chilldren[letter]!;
    }
    node.chilldren[end] = TrieNode();
  }

  bool contains(String str) {
    TrieNode node = root;

    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node.chilldren.containsKey(letter)) {
        return false;
      }
      node = node.chilldren[letter]!;
    }
    return node.chilldren.containsKey(end);
  }
}

class suff {
  TrieNode root = TrieNode();
  String end = '*';

  suff(String str) {
    populate(str);
  }

  void populate(String str) {
    for (int i = 0; i < str.length; i++) {
      insert(i, str);
    }
  }

  void insert(int start, String str) {
    TrieNode node = root;
    for (int i = start; i < str.length; i++) {
      String letter = str[i];
      node.chilldren.putIfAbsent(letter, () => TrieNode());
      node = node.chilldren[letter]!;
    }
    node.chilldren[end] = TrieNode();
  }

  bool contains(String str) {
    TrieNode node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node.chilldren.containsKey(letter)) {
        return false;
      }

      node = node.chilldren[letter]!;
    }
    return node.chilldren.containsKey(end);
  }
}
