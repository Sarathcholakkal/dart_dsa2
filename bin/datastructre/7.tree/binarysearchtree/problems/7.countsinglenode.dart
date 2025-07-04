import '../bst_imp.dart';

///count single child  node

// int countSingleChildNodes(TreeNode? root) {
//   if (root == null) return 0;

//   int count = 0;

//   // Check if the node has exactly one child
//   if ((root.left == null && root.right != null) ||
//       (root.left != null && root.right == null)) {
//     count = 1;
//   }

//   // Recurse for left and right subtree
//   count += countSingleChildNodes(root.left);
//   count += countSingleChildNodes(root.right);

//   return count;
// }

int countSinglechild(TreeNode? root) {
  if (root == null) return 0;
  int count = 0;
  if ((root.left != null && root.right == null) ||
      (root.left == null && root.right != null)) {
    count = 1;
  }
  count += countSinglechild(root.left);
  count += countSinglechild(root.right);
  return count;
}
