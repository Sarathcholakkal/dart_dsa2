//! recursive solutions

// class TreeNode {
//   // ! need to learn not understanded it
//   int value;
//   TreeNode? leftChild;
//   TreeNode? rightChild;

//   TreeNode(this.value, [this.leftChild, this.rightChild]);
// }

// class Solution {
//   int findTreeDiameter(TreeNode? root) {
//     List<int> diameter = [0]; //! not able to use int  due to recursive property
//     _calculateHeight(root, diameter);
//     return diameter[0];
//   }

//   int _calculateHeight(TreeNode? node, List<int> diameter) {
//     if (node == null) return 0;

//     int leftHeight = _calculateHeight(node.leftChild, diameter);
//     int rightHeight = _calculateHeight(node.rightChild, diameter);

//     diameter[0] = (leftHeight + rightHeight) > diameter[0]
//         ? (leftHeight + rightHeight)
//         : diameter[0];
//     return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
//   }
// }

// void main() {
//   TreeNode root =
//       TreeNode(1, TreeNode(2, TreeNode(4), TreeNode(5)), TreeNode(3));

//   Solution solution = Solution();
//   print("Diameter of the tree: ${solution.findTreeDiameter(root)}");
// }

//! iterative solutions , iterative approach always helps you to debug faster ,less complications

//? refernce video link: https://youtu.be/zM9N_x_v_24?si=70j7t-Pt_ETa61Uq

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val, {this.left, this.right});
}

int treeDiameter(TreeNode? root) {
  if (root == null) return 0;

  Map<TreeNode?, int> depthMap = {};
  Stack<TreeNode> stack = Stack<TreeNode>();
  int diameter = 0;

  stack.push(root);

  while (stack.isNotEmpty) {
    TreeNode node = stack.top();

    if (node.left != null && !depthMap.containsKey(node.left)) {
      stack.push(node.left!);
    } else if (node.right != null && !depthMap.containsKey(node.right)) {
      stack.push(node.right!);
    } else {
      stack.pop();
      int leftDepth = depthMap[node.left] ?? 0;
      int rightDepth = depthMap[node.right] ?? 0;

      depthMap[node] = 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
      diameter = diameter > (leftDepth + rightDepth)
          ? diameter
          : (leftDepth + rightDepth);
    }
  }

  return diameter;
}

class Stack<T> {
  final List<T> _list = [];

  void push(T value) => _list.add(value);

  T pop() => _list.removeLast();

  T top() => _list.last;

  bool get isNotEmpty => _list.isNotEmpty;
}

void main() {
  TreeNode root = TreeNode(
    1,
    left: TreeNode(2, left: TreeNode(4), right: TreeNode(5)),
    right: TreeNode(3),
  );

  print("Diameter of the tree: ${treeDiameter(root)}");
}
