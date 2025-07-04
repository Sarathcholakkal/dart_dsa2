import '../bst_imp.dart';
//98. Validate Binary Search Tree

//98. Validate Binary Search Tree

// bool validateBst(TreeNode? root) {
//   if (root == null) {
//     return false;
//   }
//   void helper(TreeNode? root, List<int> inorderLIst) {
//     if (root == null) {
//       return;
//     }
//     helper(root.left, inorderLIst);
//     inorderLIst.add(root.data);
//     helper(root.right, inorderLIst);
//   }

//   List<int> inordeList = [];
//   helper(root, inordeList);

//   for (int i = 1; i < inordeList.length; i++) {
//     if (inordeList[i] <= inordeList[i - 1]) {
//       return false;
//     }
//   }
//   return true;
// }

bool validateBst(TreeNode? root) {
  if (root == null) {
    return false;
  }
  void helper(TreeNode? root, List<int> list) {
    if (root == null) {
      return;
    }
    helper(root.left, list);
    list.add(root.data);
    helper(root.right, list);
  }

  List<int> list = [];
  helper(root, list);

  for (int i = 1; i < list.length; i++) {
    if (list[i] < list[i - 1]) {
      return false;
    }
  }
  return true;
}
