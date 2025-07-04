/*
 * Question: Given the root of a binary tree, invert the tree and return its root.
 * 
 * In an inverted binary tree, the left and right children of all nodes are swapped.
 * 
 * //! leetcode 226 invert binary tree
 * 
 * Example:
 * Input:
 *        4
 *       / \
 *      2   7
 *     / \  / \
 *    1   3 6  9
 * 
 * Output:
 *        4
 *       / \
 *      7   2
 *     / \  / \
 *    9   6 3  1
 */

import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) {
      return null;
    }

    Queue<TreeNode> queue = Queue<TreeNode>();
    queue.add(root);

    while (queue.isNotEmpty) {
      TreeNode node = queue.removeFirst(); // Fixed method call

      // Swap left and right children
      TreeNode? temp = node.left;
      node.left = node.right;
      node.right = temp; // Corrected swapping logic

      if (node.left != null) {
        queue.add(node.left!);
      }
      if (node.right != null) {
        queue.add(node.right!);
      }
    }
    return root;
  }
}

// Helper function to print the tree in level order
void printTree(TreeNode? root) {
  if (root == null) {
    print("Tree is empty");
    return;
  }

  Queue<TreeNode> queue = Queue<TreeNode>();
  queue.add(root);

  while (queue.isNotEmpty) {
    TreeNode node = queue.removeFirst();

    if (node.left != null) {
      queue.add(node.left!);
    }
    if (node.right != null) {
      queue.add(node.right!);
    }
  }
  print(""); // New line after printing
}

void main() {
  // Creating the tree:
  //        4
  //       / \
  //      2   7
  //     / \  / \
  //    1   3 6  9
  TreeNode root = TreeNode(
    4,
    TreeNode(2, TreeNode(1), TreeNode(3)),
    TreeNode(7, TreeNode(6), TreeNode(9)),
  );

  print("Original Tree:");
  printTree(root);

  Solution solution = Solution();
  TreeNode? invertedRoot = solution.invertTree(root);

  print("Inverted Tree:");
  printTree(invertedRoot);
}
