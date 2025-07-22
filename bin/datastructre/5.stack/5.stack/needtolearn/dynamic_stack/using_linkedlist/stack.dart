// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class Stack {
//   Node? top;
//   void push(int data) {
//     Node newNode = Node(data);
//     if (top == null) {
//       top = newNode;
//     } else {
//       newNode.next = top;
//       top = newNode;
//     }
//   }

//   void pop() {
//     top = top?.next;
//   }

//   void addAfter(int data, int after) {
//     Node? newNode = Node(data);
//     Node? temp = top;
//     while (temp != null) {
//       if (after == temp.data) {
//         newNode.next = temp.next;
//         temp.next = newNode;
//         break;
//       }
//       temp = temp.next;
//     }
//   }

//   void addBefore(int data, int beforeData) {
//     Node? newNode = Node(data);
//     Node? prev;
//     Node? temp = top;
//     while (temp != null) {
//       if (temp.data == beforeData) {
//         if (temp == top) {
//           newNode.next = top;
//           top = newNode;
//           break;
//         }else{
//           prev!.next = newNode;
//           newNode.next = temp;
//           break;
//         }
//       }
//       prev = temp;
//       temp = temp.next;
//     }
//   }

//   void delete(int data) {
//     Node? current = top;
//     Node? prev;
//     while (current != null) {
//       if (current.data == data) {
//         if (current == top) {
//           top = top?.next;
//           prev = current;
//           current = current.next;
//         } else {
//           prev?.next = current.next;
//           current = current.next;

//           continue;
//         }
//       } else {
//         prev = current;
//         current = current.next;
//       }
//     }
//   }

//   void display() {
//     Node? temp = top;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   Stack s = Stack();
//   s.push(10);
//   s.push(20);
//   s.push(30);
//   s.push(40);
//   // s.delete(30);
//   s.addAfter(11, 20);
//   s.addBefore(29, 30);
//   s.display();
// }
