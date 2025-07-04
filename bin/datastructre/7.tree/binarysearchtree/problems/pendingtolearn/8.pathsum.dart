// Question://! leetcode 112
// Given a binary tree and a target sum, determine if the tree has a root-to-leaf path
// such that adding up all the values along the path equals the given target sum.
// Return true if such a path exists, otherwise return false.

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    if (root == null) {
      return false;
    }

    List<TreeNode> path = [root];
    List<int> sumPath = [root.val];

    while (path.isNotEmpty) {
      TreeNode node = path.removeAt(0);
      int tempSum = sumPath.removeAt(0);

      // Check if it's a leaf node and sum matches
      if (node.left == null && node.right == null && tempSum == targetSum) {
        return true;
      }

      if (node.left != null) {
        path.add(node.left!);
        sumPath.add(tempSum + node.left!.val);
      }

      if (node.right != null) {
        path.add(node.right!);
        sumPath.add(tempSum + node.right!.val);
      }
    }

    return false;
  }
}

void main() {
  // Creating a sample binary tree:
  //       5
  //      / \
  //     4   8
  //    /   / \
  //   11  13  4
  //  /  \      \
  // 7    2      1

  TreeNode root = TreeNode(
      5,
      TreeNode(4, TreeNode(11, TreeNode(7), TreeNode(2))),
      TreeNode(8, TreeNode(13), TreeNode(4, null, TreeNode(1))));

  Solution solution = Solution();
  int targetSum = 22;
  print(solution.hasPathSum(root, targetSum)); // Expected output: true
}
