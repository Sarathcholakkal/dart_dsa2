//given the root of a binary tree a target value, return the value in the
//BST tha is closest to the target ,if there are multiple answers print the smallest//! leetcode 270 premium

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  int closestValue(TreeNode? root, double target) {
    int closest = root!.val; // Initially assume that root is the closest
    int value; // Track current value

    while (root != null) {
      value = root.val; // Current node value

      // Update closest if the current node is closer or if distances are equal but value is smaller
      closest = ((value - target).abs() < (closest - target).abs() ||
              ((value - target).abs() == (closest - target).abs() &&
                  value < closest))
          ? value
          : closest;

      root = target < value ? root.left : root.right;
    }

    return closest;
  }
}

void main() {
  TreeNode root =
      TreeNode(4, TreeNode(2, TreeNode(1), TreeNode(3)), TreeNode(5));

  Solution solution = Solution();
  //double target = 3.714;
  double target = 3.5;

  print("Closest value: ${solution.closestValue(root, target)}");
}




   // Traverse the tree based on target value