class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(0); // 가상 헤드 노드 위치
    ListNode? current = dummy; // 현재 노드를 가리키는 포인터
    int carry = 0; // 올림값 저장

    while (l1 != null || l2 != null || carry > 0) {
      int sum = carry; // 올림 추가

      if (l1 != null) {
        sum += l1.val; //l1 값 추가
        l1 = l1.next; // l1 포인터 이동
      }
      if (l2 != null) {
        sum += l2.val; // l2 값 추가
        l2 = l2.next; // l2 포인터 이동
      }

      carry = sum ~/ 10; // 새로운 올림 값
      current?.next = ListNode(sum % 10); // 새로운 노드 추가
      current = current?.next; // 현재 노드 포인터 이동
    }
    return dummy.next; // 가상헤드 노드의 다음 노드 반환
  }
}
