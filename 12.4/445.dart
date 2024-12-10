class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverse(ListNode? head) {
    ListNode? prev = null;
    while (head != null) {
      ListNode? next = head.next;
      head.next = prev;
      prev = head;
      head = next;
    }
    return prev;
  }

  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    l1 = reverse(l1);
    l2 = reverse(l2);

    ListNode? dummy = ListNode(0);
    ListNode? current = dummy;
    int carry = 0;

    while (l1 != null || l2 != null || carry > 0) {
      int sum = carry;

      if (l1 != null) {
        sum += l1.val;
        l1 = l1.next;
      }
      if (l2 != null) {
        sum += l2.val;
        l2 = l2.next;
      }

      carry = sum ~/ 10;
      current?.next = ListNode(sum % 10);
      current = current?.next;
    }

    return reverse(dummy.next);
  }
}