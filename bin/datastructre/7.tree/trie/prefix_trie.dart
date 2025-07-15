// class TrieNode {
//   Map<String, TrieNode?> childrens = {};
// }

// class PrefixTrie {
//   TrieNode root = TrieNode();
//   String endsymbol = "*";

//   PrefixTrie(String str) {
//     populatePrefixTrie(str);
//   }

//   void populatePrefixTrie(String str) {
//     // ✅ Insert prefixes by starting from the beginning
//     for (int i = 1; i <= str.length; i++) {
//       insertPrefixStartingAt(str.substring(0, i));
//     }
//   }

//   void insertPrefixStartingAt(String prefix) {
//     TrieNode node = root;

//     for (int i = 0; i < prefix.length; i++) {
//       String letter = prefix[i];
//       node.childrens[letter] ??= TrieNode();
//       node = node.childrens[letter]!;
//     }
//     node.childrens[endsymbol] = TrieNode(); // ✅ Mark end of word
//   }

//   bool contains(String str) {
//     TrieNode node = root;
//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       if (!node.childrens.containsKey(letter)) {
//         return false;
//       }
//       node = node.childrens[letter]!;
//     }
//     return node.childrens.containsKey(endsymbol);
//   }
// }

// void main() {
//   PrefixTrie trie = PrefixTrie("banana");
//   print(trie.contains("ban")); // ✅ true
//   print(trie.contains("bana")); // ✅ true
//   print(trie.contains("banana")); // ✅ true
//   print(trie.contains("nana")); // ❌ false (not a prefix)
// }

// class TrieNode {
//   Map<String, TrieNode> children = {};
// }

// class PrefixTrie {
//   TrieNode root = TrieNode();
//   String endsymbol = "*";
//   PrefixTrie(String str) {
//     populatedprefixtrie(str);
//   }

//   void populatedprefixtrie(String str) {
//     for (int i = 1; i <= str.length; i++) {
//       //!<=  should lessthan or equals
//       insertsubStingAt(str.substring(0, i));
//     }
//   }

//   insertsubStingAt(String str) {
//     TrieNode node = root;

//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       node.children.putIfAbsent(letter, () => TrieNode());
//       node = node.children[letter]!;
//     }
//     node.children[endsymbol] = TrieNode();
//   }

//   bool contains(String str) {
//     TrieNode node = root;
//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       if (!node.children.containsKey(letter)) {
//         return false;
//       }
//       node = node.children[letter]!;
//     }
//     return node.children.containsKey(endsymbol);
//   }
// }

// class TrieNode {
//   Map<String, TrieNode> chilldren = {};
// }

// class PrefixTrie {
//   TrieNode root = TrieNode();
//   String endsymbol = '*';

//   PrefixTrie(String str) {
//     populateprefixTrie(str);
//   }

//   void populateprefixTrie(String str) {
//     for (int i = 1; i <= str.length; i++) {
//       insertsubStringAt(str.substring(0, i));
//     }
//   }

//   void insertsubStringAt(String str) {
//     TrieNode node = root;
//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       node.chilldren.putIfAbsent(letter, () => TrieNode());
//       node = node.chilldren[letter]!;
//     }
//     node.chilldren[endsymbol] = TrieNode();
//   }

//   bool contains(String str) {
//     TrieNode node = root;
//     for (var c in str.split('')) {
//       if (!node.chilldren.containsKey(c)) {
//         return false;
//       }
//       node = node.chilldren[c]!;
//     }
//     return node.chilldren.containsKey(endsymbol);
//   }
// }

// void main() {
//   PrefixTrie trie = PrefixTrie("banana");
//   print(trie.contains("ban")); // ✅ true
//   print(trie.contains("bana")); // ✅ true
//   print(trie.contains("banana")); // ✅ true
//   print(trie.contains("nana")); // ❌ false (not a prefix)
// }

import 'package:path/path.dart';

class TrieNode {
  Map<String, TrieNode> chilldren = {};
}

class PrefixTrie {
  TrieNode root = TrieNode();
  String end = "*";

  PrefixTrie(String str) {
    poupulateprefix(str);
  }

  void poupulateprefix(String str) {
    for (int i = 1; i <= str.length; i++) {
      insertSubstringAt(str.substring(0, i));
    }
  }

  void insertSubstringAt(String str) {
    TrieNode node = root;
    for (int i = 0; i < str.length; i++) {
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

void main() {
  // PrefixTrie trie = PrefixTrie("banana");
  prefix trie = prefix("banana");
  print(trie.contains("ban")); // ✅ true
  print(trie.contains("bana")); // ✅ true
  print(trie.contains("banana")); // ✅ true
  print(trie.contains("nana")); // ❌ false (not a prefix)
}

class prefix {
  TrieNode root = TrieNode();
  String end = '*';

  prefix(String str) {
    populate(str);
  }
  void populate(String str) {
    for (int i = 1; i <= str.length; i++) {
      insert(str.substring(0, i));
    }
  }

  void insert(String str) {
    TrieNode node = root;

    for (int i = 0; i < str.length; i++) {
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
