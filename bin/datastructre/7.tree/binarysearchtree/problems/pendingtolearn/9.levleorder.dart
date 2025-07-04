// 102. Binary Tree Level Order Traversal

// Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<List<int>> levelOrder(TreeNode? root) {
    if (root == null) {
      return [];
    }

    List<TreeNode> queue = [root];
    List<List<int>> output = [];

    while (queue.isNotEmpty) {
      int levelSize = queue.length;
      List<int> temp = [];

      for (int i = 0; i < levelSize; i++) {
        TreeNode node = queue.removeAt(0);
        temp.add(node.val);

        if (node.left != null) {
          queue.add(node.left!);
        }
        if (node.right != null) {
          queue.add(node.right!);
        }
      }

      output.add(temp);
    }

    return output;
  }
}

void main() {
  // Create binary tree:
  //       1
  //      / \
  //     2   3
  //    / \
  //   4   5

  TreeNode root = TreeNode(
    1,
    TreeNode(
      2,
      TreeNode(4),
      TreeNode(5),
    ),
    TreeNode(3),
  );

  Solution solution = Solution();
  List<List<int>> result = solution.levelOrder(root);

  // Print output
  for (List<int> level in result) {
    print(level);
  }
}
