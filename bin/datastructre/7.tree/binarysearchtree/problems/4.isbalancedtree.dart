// 110. Balanced Binary Tree

// Given a binary tree, determine if it is height-balanced.

import '../bst_imp.dart';

// bool isBalanced(TreeNode? root) {
//   return _checkHeight(root) != -1;
// }

// int _checkHeight(TreeNode? node) {
//   if (node == null) return 0;

//   int leftHeight = _checkHeight(node.left);
//   if (leftHeight == -1) return -1;

//   int rightHeight = _checkHeight(node.right);
//   if (rightHeight == -1) return -1;

//   if ((leftHeight - rightHeight).abs() > 1) return -1;

//   return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
// }

bool isBalanced(TreeNode? root) {
  return _checkHeight(root) != -1;
}

int _checkHeight(TreeNode? root) {
  if (root == null) {
    return 0;
  }
  int leftheight = _checkHeight(root.left);
  if (leftheight == -1) return -1;
  int rightheight = _checkHeight(root.right);
  if (rightheight == -1) return -1;
  if ((rightheight - leftheight).abs() > 1) return -1;
  return 1 + (leftheight > rightheight ? leftheight : rightheight);
}
