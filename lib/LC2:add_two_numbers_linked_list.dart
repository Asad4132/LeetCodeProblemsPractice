class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> arguments) {
  ListNode num1 = ListNode(
      9,
      ListNode(
          9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9)))))));
  ListNode num2 = ListNode(9, ListNode(9, ListNode(9, ListNode(9))));
  print(addTwoNumbers(num1, num2));
}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  bool hasCarry = false;
  ListNode? sumNode = ListNode();
  ListNode? traverseNode = sumNode;
  for (ListNode? listNode = l1, listNode2 = l2;
      listNode != null || listNode2 != null;) {
    if (listNode != null && listNode2 != null) {
      int sum = listNode.val + listNode2.val;
      if (hasCarry) {
        sum++;
        hasCarry = false;
      }
      if (sum > 9) {
        hasCarry = true;
        sumNode!.val = sum % 10;
      } else {
        sumNode!.val = sum;
      }
    } else if (listNode != null) {
      int sum = listNode.val;
      if (hasCarry) {
        sum++;
        hasCarry = false;
      }
      if (sum > 9) {
        hasCarry = true;
        sumNode!.val = sum % 10;
      } else {
        sumNode!.val = sum;
      }
    } else {
      int sum = listNode2!.val;
      if (hasCarry) {
        sum++;
        hasCarry = false;
      }
      if (sum > 9) {
        hasCarry = true;
        sumNode!.val = sum % 10;
      } else {
        sumNode!.val = sum;
      }
    }

    if (listNode != null) {
      listNode = listNode.next;
    }
    if (listNode2 != null) {
      listNode2 = listNode2.next;
    }
    if (listNode != null || listNode2 != null) {
      sumNode.next = ListNode();
      sumNode = sumNode.next;
    } else if (listNode == null && listNode2 == null && hasCarry) {
      sumNode.next = ListNode(1);
      sumNode = sumNode.next;
    }
  }
  return traverseNode;
}
