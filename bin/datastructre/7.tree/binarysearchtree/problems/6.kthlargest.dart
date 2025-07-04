import '../bst_imp.dart';

int kthLargest(int k, TreeNode? root) {
  int i = 0;
  int? result;

  void reversinorder(TreeNode? root) {
    if (root == null || result != null) {
      return;
    }
    reversinorder(root.right);
    i++;
    if (i == k) {
      result = root.data;
    }
    reversinorder(root.left);
  }

  reversinorder(root);
  return result!;
}
