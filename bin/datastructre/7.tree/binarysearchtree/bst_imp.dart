// import 'dart:collection';

// class TreeNode {
//   int data;
//   TreeNode? left;
//   TreeNode? right;
//   TreeNode(this.data);
// }

// class BinarySearchTree {
//   TreeNode? root;

//   //! Insert a node
//   void insert(int data) {
//     TreeNode? currentNode = root;
//     if (currentNode == null) {
//       root = TreeNode(data);
//       return;
//     }
//     while (true) {
//       if (data < currentNode!.data) {
//         if (currentNode.left == null) {
//           currentNode.left = TreeNode(data);
//           break;
//         } else {
//           currentNode = currentNode.left;
//         }
//       } else {
//         //n here we allows duplicate elements at right
//         if (currentNode.right == null) {
//           currentNode.right = TreeNode(data);
//           break;
//         } else {
//           currentNode = currentNode.right;
//         }
//       }
//     }
//   }

//   //! Check if data exists in BST
//   bool contains(int data) {
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

//   //! Remove a node from BST
//   void remove(int data) {
//     removeHelper(data, root, null);
//   }

//   //! Remove helper function
//   void removeHelper(int data, TreeNode? currentNode, TreeNode? parentNode) {
//     while (currentNode != null) {
//       if (data < currentNode.data) {
//         parentNode = currentNode;
//         currentNode = currentNode.left;
//       } else if (data > currentNode.data) {
//         parentNode = currentNode;
//         currentNode = currentNode.right;
//       } else {
//         // Case 1: Node has two children
//         if (currentNode.left != null && currentNode.right != null) {
//           currentNode.data = getMinValue(currentNode.right);
//           removeHelper(currentNode.data, currentNode.right, currentNode);
//         } else {
//           // Case 2 & 3: Node has one or no children
//           TreeNode? child =
//               (currentNode.left != null) ? currentNode.left : currentNode.right;
//           if (parentNode == null) {
//             root = child;
//           } else if (parentNode.left == currentNode) {
//             parentNode.left = child;
//           } else {
//             parentNode.right = child;
//           }
//           break;
//         }
//       }
//     }
//   }

//   //! Get the minimum value of a subtree
//   int getMinValue(TreeNode? currentNode) {
//     while (currentNode!.left != null) {
//       currentNode = currentNode.left;
//     }
//     return currentNode.data;
//   }

//   void inorderTraversal(TreeNode? root) {
//     if (root == null) {
//       return;
//     }
//     inorderTraversal(root.left);
//     print(root.data);
//     inorderTraversal(root.right);
//   }
// }

// //! Main function
// void main() {
//   BinarySearchTree tree = BinarySearchTree();
//   tree.insert(10);
//   tree.insert(30);
//   tree.insert(20);
//   tree.insert(40);
//   tree.insert(5);
//   tree.insert(15);
//   print(tree.contains(10)); // true
//   print(tree.contains(25)); // false
//   tree.remove(30);
//   print(tree.contains(30)); // false
//   tree.inorderTraversal(tree.root);
//   print("validate bst");
//   print(validateBst(tree.root));
//   print("find height of tree");
//   // print(findheighoftree(tree.root));
// }

import 'problems/1.validate_bst.dart';
import 'problems/2.heightoftree.dart';
import 'problems/4.isbalancedtree.dart';
import 'problems/7.countsinglenode.dart';
import 'problems/8.countleafnode.dart';

class TreeNode {
  int data;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.data);
}

class BinarySearchTree {
  TreeNode? root;
  void insert(int data) {
    TreeNode newnode = TreeNode(data);
    if (root == null) {
      root = newnode;
      return;
    }
    TreeNode? currentNode = root;
    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = newnode;
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else if (data > currentNode.data) {
        if (currentNode.right == null) {
          currentNode.right = newnode;
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

  //
  void inorder(TreeNode? root) {
    if (root == null) {
      return;
    }
    inorder(root.left);
    print(root.data);
    inorder(root.right);
  }

  // contains

  bool contains(int data) {
    TreeNode? currentnode = root;
    while (currentnode != null) {
      if (data < currentnode.data) {
        currentnode = currentnode.left;
      } else if (data > currentnode.data) {
        currentnode = currentnode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  //
  int getminvalue(TreeNode? node) {
    if (node!.left != null) {
      node = node.left;
    }
    return node!.data;
  }

  void removeHelper(int data, TreeNode? currentNode, TreeNode? parnetNode) {
    while (currentNode != null) {
      if (data < currentNode.data) {
        parnetNode = currentNode;
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        parnetNode = currentNode;
        currentNode = currentNode.right;
      } else {
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getminvalue(currentNode.right);
          removeHelper(currentNode.data, currentNode.right, currentNode);
        } else {
          TreeNode? child = (currentNode.left != null)
              ? currentNode.left
              : currentNode.right;

          if (parnetNode == null) {
            root = child;
          } else if (parnetNode.left == currentNode) {
            parnetNode.left = child;
          } else {
            parnetNode.right = child;
          }
        }
        break;
      }
    }
  }

  // remove
  void remove(int data) {
    removeHelper(data, root, null);
  }
}

void main() {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(20);
  tree.insert(10);
  tree.insert(30);
  tree.insert(5);
  tree.insert(15);
  tree.insert(25);
  tree.insert(35);

  tree.inorder(tree.root);
  print(tree.contains(10));
  // tree.remove(11);
  tree.inorder(tree.root);

  print("Max depth of tree: ${maxDepth(tree.root)}");
  print("Is valid BST: ${validateBst(tree.root)}");
  print("Is balanced tree: ${isBalanced(tree.root)}");
  print("single child node: ${countSinglechild(tree.root)}");
  print("count leaf node: ${countleafNode(tree.root)}");
}
