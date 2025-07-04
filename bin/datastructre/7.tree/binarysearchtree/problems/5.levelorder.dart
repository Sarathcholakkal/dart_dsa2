import '../bst_imp.dart';

List<List<int>> levelOrder(TreeNode? root) {
  if (root == null) return [];
  List<TreeNode> queue = [];
  List<List<int>> list = [];
  queue.add(root);
  while (queue.isNotEmpty) {
    int levelsize = queue.length;
    List<int> temp = [];
    for (int i = 0; i < levelsize; i++) {
      TreeNode current = queue.removeAt(0);
      temp.add(current.data);
      if (current.left != null) queue.add(current.left!);
      if (current.right != null) queue.add(current.right!);
    }
    list.add(temp);
  }
  return list;
}
