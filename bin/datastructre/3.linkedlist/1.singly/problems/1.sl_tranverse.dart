class Node {
  int value;
  Node? next;
  Node(this.value);
}

void main() {
  Node l1 = Node(1);
  Node l2 = Node(2);
  Node l3 = Node(4);

  //linking node

  l1.next = l2;
  l2.next = l3;
  l3.next = null;
//! tranvere
  Node? ptr = l1;
  while (ptr != null) {
    print(ptr.value);
    ptr = ptr.next;
  }
}
