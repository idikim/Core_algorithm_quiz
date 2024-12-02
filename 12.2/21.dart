class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode dummy = ListNode(0); // 가상 헤드 노드
    ListNode? tail = dummy; // 결과 리스트의 끝을 가리키는 포인터

    while (list1 != null && list2 != null) {
      if (list1.val <= list2.val) {
        tail?.next = list1; // list1의 노드를 추가
        list1 = list1.next; // list1 포인터 이동
      } else {
        tail?.next = list2; // list2의 노드를 추가
        list2 = list2.next; // list2 포인터 이동
      }
      tail = tail?.next; // 결과 리스트 포인터 이동
    }

    // 남아있는 노드를 추가
    tail?.next = list1 ?? list2;

    return dummy.next; // 가상 헤드 노드의 다음 노드를 반환
  }
}
