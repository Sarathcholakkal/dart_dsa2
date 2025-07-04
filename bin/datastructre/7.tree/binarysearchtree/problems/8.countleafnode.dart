import '../bst_imp.dart';

int countleafNode(TreeNode? root) {
  if (root == null) return 0;
  if (root.left == null && root.right == null) {
    return 1;
  }
  return countleafNode(root.left) + countleafNode(root.right);
}
