// 230. Kth Smallest Element in a BST

// Given the root of a binary search tree, and an integer k, return the kth smallest value (1-indexed) of all the values of the nodes in the tree.

import '../bst_imp.dart';

// int kthSmallest(TreeNode? root, int k) {
//     List<int> inorderList = [];

//     void helper(TreeNode? root, List<int> inorderList) {
//       if (root == null) {
//         return;
//       }
//       helper(root.left, inorderList);
//       inorderList.add(root.data);
//       helper(root.right, inorderList);
//     }

//     helper(root, inorderList);
//     return inorderList[k - 1];
//   }

// more efficient

int kthSmallest(TreeNode? root, int k) {
  int i = 0;
  int? result;
  void inOrder(TreeNode? node) {
    if (node == null || result != null) {
      return;
    }

    inOrder(node.left);

    i++;
    if (k == i) {
      result = node.data;
    }

    inOrder(node.right);
  }

  inOrder(root);

  return result!;
}
