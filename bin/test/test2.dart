class TrieNode {
  Map<String, TrieNode> chilldren = {};
  bool isword = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String str) {
    TrieNode node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      node.chilldren.putIfAbsent(letter, () => TrieNode());
      node = node.chilldren[letter]!;
    }
    node.isword = true;
  }

  void autoHeper(TrieNode node, String prefix, List<String> sugg) {
    if (node.isword) {
      sugg.add(prefix);
    }
    for (var nei in node.chilldren.entries) {
      autoHeper(nei.value, nei.key + prefix, sugg);
    }
  }

  List<String> autocomplete(String perfix) {
    TrieNode node = root;
    List<String> sugg = [];
    for (int i = 0; i < perfix.length; i++) {
      String letter = perfix[i];
      if (!node.chilldren.containsKey(letter)) {
        return <String>[];
      }
      node = node.chilldren[letter]!;
    }
    autoHeper(node, perfix, sugg);
    return sugg;
  }
}

void main() {
  Trie tr = Trie();
  tr.insert('bat');
  tr.insert('bananan');
  tr.insert('banner');
  print(tr.autocomplete('ba'));
}
