class TrieNode {
  Map<String, TrieNode> children = {};
  bool isWord = false;
}

class Trie {
  final TrieNode root = TrieNode();

  void insert(String str) {
    TrieNode node = root;
    for (var c in str.split('')) {
      node = node.children.putIfAbsent(c, () => TrieNode());
    }
    node.isWord = true;
  }

  bool search(String word) {
    TrieNode node = root;
    for (var c in word.split('')) {
      if (!node.children.containsKey(c)) {
        return false;
      }
      node = node.children[c]!;
    }
    return node.isWord;
  }
}

void main() {
  Trie trie = Trie();

  // Insert words
  trie.insert("apple");
  trie.insert("app");
  trie.insert("apply");
  trie.insert("banana");

  // Search for existing and non-existing words
  print(trie.search("apple")); // true
  print(trie.search("app")); // true
  print(trie.search("appl")); // false (prefix only)
  print(trie.search("banana")); // true
  print(trie.search("ban")); // false (prefix only)
  print(trie.search("bat")); // false (not inserted)
}
