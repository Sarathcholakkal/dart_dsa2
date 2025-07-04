// class TrieNode {
//   Map<String, TrieNode> children = {};
//   bool isWord = false;
// }

// class Trie {
//   TrieNode root = TrieNode();

//   // Insert a word into the Trie
//   void insert(String word) {
//     TrieNode node = root;
//     for (var c in word.split('')) {
//       node.children.putIfAbsent(c, () => TrieNode());
//       node = node.children[c]!;
//     }
//     node.isWord = true;
//   }

//   // Helper function to find all words starting with a given prefix
//   void _autoCompleteHelper(
//       TrieNode node, String prefix, List<String> suggestions) {
//     if (node.isWord) {
//       suggestions.add(prefix);
//     }
//     for (var entry in node.children.entries) {
//       _autoCompleteHelper(entry.value, prefix + entry.key, suggestions);
//     }
//   }

//   // Returns a list of words that start with the given prefix
//   List<String> autoComplete(String prefix) {
//     List<String> suggestions = [];
//     TrieNode? node = root;

//     // Traverse Trie up to the prefix
//     for (var c in prefix.split('')) {
//       if (!node!.children.containsKey(c)) return [];
//       node = node.children[c];
//     }

//     _autoCompleteHelper(node!, prefix, suggestions);
//     return suggestions;
//   }
// }

// void main() {
//   Trie trie = Trie();

//   // Insert words into Trie
//   trie.insert("apple");
//   trie.insert("app");
//   trie.insert("apply");
//   trie.insert("banana");
//   trie.insert("bat");
//   trie.insert("ball");
//   trie.insert("batman");
//   trie.insert("battle");

//   // Testing auto-complete feature
//   print("Auto-complete suggestions for 'app': ${trie.autoComplete("app")}");
//   print("Auto-complete suggestions for 'ba': ${trie.autoComplete("ba")}");
//   print("Auto-complete suggestions for 'bat': ${trie.autoComplete("bat")}");
//   print("Auto-complete suggestions for 'xyz': ${trie.autoComplete("xyz")}");
// }
// ✅ Time Complexity: O(M + N) (M = prefix length, N = number of words found).
// 5. Auto-Completion using Trie

// Concept
// 	•	Trie stores a set of words, allowing for efficient prefix searches.
// 	•	Used in search suggestions, auto-complete, and dictionary lookups.
// How This Works
// 	1.	Insertion (insert)
// 	•	Adds words letter by letter into the Trie.
// 	•	Marks the end of a word using isWord = true.
// 	2.	Auto-Completion (autoComplete)
// 	•	Traverses the Trie up to the given prefix.
// 	•	Calls _autoCompleteHelper recursively to collect all words starting with the prefix.
// 	3.	Helper Function (_autoCompleteHelper)
// 	•	Recursively explores Trie nodes.
// 	•	Collects all words that start with the prefix.
//   Auto-complete suggestions for 'app': [app, apple, apply]
// Auto-complete suggestions for 'ba': [banana, ball, bat, batman, battle]
// Auto-complete suggestions for 'bat': [bat, batman, battle]
// Auto-complete suggestions for 'xyz': []
// ✅ Time Complexity:
// 	•	Insert: O(N), where N is the length of the word.
// 	•	Search & Auto-Completion: O(M + N), where M is the prefix length and N is the number of words founcd.

// class TrieNode {
//   Map<String, TrieNode> chilldren = {};
//   bool isword = false;
// }

// class Trie {
//   TrieNode root = TrieNode();
//   void insert(String str) {
//     TrieNode node = root;
//     for (var c in str.split('')) {
//       node.chilldren.putIfAbsent(c, () => TrieNode());
//       node = node.chilldren[c]!;
//     }
//     node.isword = true;
//   }

//   void autocompeltehelepr(TrieNode node, String prefix, List<String> sugg) {
//     if (node.isword) {
//       sugg.add(prefix);
//     }
//     for (var entry in node.chilldren.entries) {
//       autocompeltehelepr(entry.value, prefix + entry.key, sugg);
//     }
//   }

//   List<String> autocomplete(String prefix) {
//     TrieNode node = root;
//     List<String> sugg = [];

//     for (var c in prefix.split('')) {
//       if (!node.chilldren.containsKey(c)) {
//         return [];
//       }
//       node = node.chilldren[c]!;
//     }
//     autocompeltehelepr(node, prefix, sugg);
//     return sugg;
//   }
// }

void main() {
  Trie newtrie = Trie();
  newtrie.insert('bat');
  newtrie.insert('bananan');
  print(newtrie.autocomplete('ba'));
}

class TrieNode {
  Map<String, TrieNode> chilldren = {};
  bool isword = false;
}

class Trie {
  TrieNode root = TrieNode();
  void insert(String str) {
    TrieNode node = root;
    for (var c in str.split('')) {
      node.chilldren.putIfAbsent(c, () => TrieNode());
      node = node.chilldren[c]!;
    }
    node.isword = true;
  }

  void autocompleteHelper(TrieNode node, String prefix, List<String> sugg) {
    if (node.isword) {
      sugg.add(prefix);
    }
    for (var entry in node.chilldren.entries) {
      autocompleteHelper(entry.value, prefix + entry.key, sugg);
    }
  }

  List<String> autocomplete(String prefix) {
    TrieNode node = root;
    List<String> sugg = [];
    for (int i = 0; i < prefix.length; i++) {
      String letter = prefix[i];
      if (!node.chilldren.containsKey(letter)) {
        return [];
      }
      node = node.chilldren[letter]!;
    }
    autocompleteHelper(node, prefix, sugg);
    return sugg;
  }
}
