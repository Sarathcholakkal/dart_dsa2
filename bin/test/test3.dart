// import 'package:collection/collection.dart';

// void ktlargest(TreeNode? root) {
//   int i = 0;
//   int k = 3;
//   int? result;

//   void helper(TreeNode? root) {
//     if (root == null || result != null) {
//       return;
//     }
//     helper(root.right);
//     i++;
//     if (i == k) {
//       result = root.data;
//     }
//     helper(root.left);
//   }

//   print(result);
// }

// class TreeNode {
//   int data;
//   TreeNode? left;
//   TreeNode? right;
//   TreeNode(this.data);
// }

// class BinarySearchTree {
//   TreeNode? root;

//   void insert(int data) {
//     TreeNode newnode = TreeNode(data);

//     if (root == null) {
//       root = newnode;
//       return;
//     }
//     TreeNode? currentNode = root;
//     while (true) {
//       if (data < currentNode!.data) {
//         if (currentNode.left == null) {
//           currentNode.left = newnode;
//           break;
//         } else {
//           currentNode = currentNode.left;
//         }
//       } else if (data > currentNode.data) {
//         if (currentNode.right == null) {
//           currentNode.right = newnode;
//           break;
//         } else {
//           currentNode = currentNode.right;
//         }
//       } else {
//         break;
//       }
//     }
//   }

//   // contains

//   bool contains(int data) {
//     if (root == null) return false;

//     TreeNode? currentNode = root;

//     while (currentNode != null) {
//       if (data < currentNode.data) {
//         currentNode = currentNode.left;
//       } else if (data > currentNode.data) {
//         currentNode = currentNode.right;
//       } else {
//         return true;
//       }
//     }
//     return false;
//   }

//   // getmin value
//   int getminValue(TreeNode? currentNode) {
//     while (currentNode!.left != null) {
//       currentNode = currentNode.left;
//     }
//     return currentNode.data;
//   }

//   // remove helper

//   void removeHelper(int data, TreeNode? currentNode, TreeNode? parentNode) {
//     while (currentNode != null) {
//       if (data < currentNode.data) {
//         parentNode = currentNode;
//         currentNode = currentNode.left;
//       } else if (data > currentNode.data) {
//         parentNode = currentNode;
//         currentNode = currentNode.right;
//       } else {
//         if (currentNode.left != null && currentNode.right != null) {
//           currentNode.data = getminValue(currentNode.right);
//           removeHelper(currentNode.data, currentNode.right, currentNode);
//         } else {
//           TreeNode? child = currentNode.left != null
//               ? currentNode.left
//               : currentNode.right;
//           if (parentNode == null) {
//             root = child;
//           } else if (parentNode.left == currentNode) {
//             parentNode.left = child;
//           } else {
//             parentNode.right = child;
//           }
//         }
//         break;
//       }
//     }
//   }

//   // remvoe
//   void

//   // dispaly
// }
