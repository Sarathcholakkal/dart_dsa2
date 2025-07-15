// import 'dart:collection';

// class TreeNode {
//   int data;
//   TreeNode? left;
//   TreeNode? right;
//   TreeNode(this.data);
// }

// class BinaryTree {
//   TreeNode? root;

//   //! Insert node (level-order)
//   void insert(int data) {
//     TreeNode newNode = TreeNode(data);
//     if (root == null) {
//       root = newNode;
//       return;
//     }

//     Queue<TreeNode> queue = Queue<TreeNode>();
//     queue.add(root!);

//     while (queue.isNotEmpty) {
//       TreeNode current = queue.removeFirst();

//       if (current.left == null) {
//         current.left = newNode;
//         break;
//       } else {
//         queue.add(current.left!);
//       }

//       if (current.right == null) {
//         current.right = newNode;
//         break;
//       } else {
//         queue.add(current.right!);
//       }
//     }
//   }

//   //! Check if tree contains value (BFS)
//   bool contains(int value) {
//     if (root == null) return false;

//     Queue<TreeNode> queue = Queue<TreeNode>();
//     queue.add(root!);

//     while (queue.isNotEmpty) {
//       TreeNode current = queue.removeFirst();
//       if (current.data == value) return true;

//       if (current.left != null) queue.add(current.left!);
//       if (current.right != null) queue.add(current.right!);
//     }

//     return false;
//   }

//   //! Remove node (by replacing with deepest node)
//   void remove(int value) {
//     if (root == null) return;

//     TreeNode? nodeToDelete;
//     TreeNode? lastNode;
//     TreeNode? parentOfLast;

//     Queue<TreeNode> queue = Queue<TreeNode>();
//     queue.add(root!);

//     while (queue.isNotEmpty) {
//       TreeNode current = queue.removeFirst();

//       if (current.data == value) {
//         nodeToDelete = current;
//       }

//       if (current.left != null) {
//         parentOfLast = current;
//         lastNode = current.left;
//         queue.add(current.left!);
//       }

//       if (current.right != null) {
//         parentOfLast = current;
//         lastNode = current.right;
//         queue.add(current.right!);
//       }
//     }

//     if (nodeToDelete != null && lastNode != null) {
//       nodeToDelete.data = lastNode.data;
//       if (parentOfLast?.left == lastNode) {
//         parentOfLast!.left = null;
//       } else if (parentOfLast?.right == lastNode) {
//         parentOfLast!.right = null;
//       } else {
//         root = null;
//       }
//     }
//   }

//   //! Traversals
//   void inorderTraversal(TreeNode? node) {
//     if (node == null) return;
//     inorderTraversal(node.left);
//     print(node.data);
//     inorderTraversal(node.right);
//   }

//   void levelOrderTraversal(TreeNode? node) {
//     if (node == null) return;
//     Queue<TreeNode> queue = Queue<TreeNode>();
//     queue.add(node);
//     while (queue.isNotEmpty) {
//       TreeNode current = queue.removeFirst();
//       print(current.data);
//       if (current.left != null) queue.add(current.left!);
//       if (current.right != null) queue.add(current.right!);
//     }
//   }
// }

import 'dart:collection';

class TreeNode {
  int data;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.data);
}

class BinaryTree {
  TreeNode? root;

  void insert(int data) {
    TreeNode newnode = TreeNode(data);
    if (root == null) {
      root = newnode;
      return;
    }
    Queue<TreeNode> queue = Queue();
    queue.add(root!);
    while (queue.isNotEmpty) {
      TreeNode currentNode = queue.removeFirst();

      if (currentNode.left == null) {
        currentNode.left = newnode;
        break;
      } else {
        queue.add(currentNode.left!);
      }

      if (currentNode.right == null) {
        currentNode.right = newnode;
        break;
      } else {
        queue.add(currentNode.right!);
      }
    }
  }

  bool contains(int data) {
    if (root == null) {
      return false;
    }

    Queue<TreeNode> queue = Queue();
    queue.add(root!);

    while (queue.isNotEmpty) {
      TreeNode currentNode = queue.removeFirst();
      if (currentNode.data == data) {
        return true;
      }
      if (currentNode.left != null) queue.add(currentNode.left!);
      if (currentNode.right != null) queue.add(currentNode.right!);
    }
    return false;
  }

  void levelorder(TreeNode? root) {
    if (root == null) return;

    Queue<TreeNode> queue = Queue();
    queue.add(root);
    while (queue.isNotEmpty) {
      TreeNode currentNode = queue.removeFirst();
      print(currentNode.data);
      if (currentNode.left != null) queue.add(currentNode.left!);
      if (currentNode.right != null) queue.add(currentNode.right!);
    }
  }
}

void main() {
  BinaryTree tree = BinaryTree();

  tree.insert(10);
  tree.insert(10);
  tree.insert(10);
  tree.insert(10);
  tree.insert(10);

  tree.insert(10);
  tree.insert(10);
  tree.insert(10);
  tree.insert(1);
  tree.levelorder(tree.root);

  print(tree.contains(1));
}
