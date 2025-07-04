//104. Maximum Depth of Binary Tree
//!maximum depth of Binary tree  leetcode 104  || height ==max depth
import 'dart:collection';

import '../bst_imp.dart';
//!  recursive way

// int maxDepth(TreeNode? root) {
//   if (root == null) return 0;

//   int leftDepth = maxDepth(root.left);
//   int rightDepth = maxDepth(root.right);

//   return 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
// }

// ! Iterative way

int heightoftree(TreeNode? root) {
  if (root == null) {
    return -1;
  }

  int numberoflevel = -1;
  Queue<TreeNode> elementqueue = Queue();
  elementqueue.add(root);

  while (true) {
    int nodecountatlevel = elementqueue.length;
    if (nodecountatlevel == 0) {
      return numberoflevel;
    }

    while (nodecountatlevel > 0) {
      TreeNode element = elementqueue.removeFirst();
      if (element.left != null) {
        elementqueue.add(element.left!);
      }
      if (element.right != null) {
        elementqueue.add(element.right!);
      }

      nodecountatlevel--;
    }
    numberoflevel++;
  }
}

int maxDepth(TreeNode? root) {
  if (root == null) return 0;
  int left = maxDepth(root.left);
  int right = maxDepth(root.right);
  return 1 + (left > right ? left : right);
}
