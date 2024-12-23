import 'dart:collection';

class RecentCounter {
  Queue<int> queue = Queue<int>();

  RecentCounter();

  int ping(int t) {
    queue.add(t);

    // 큐의 첫 번째 요소가 범위에 속하지 않으면 제거
    while (queue.isNotEmpty && queue.first < t - 3000) {
      queue.removeFirst();
    }

    // 큐의 길이가 호출 횟수
    return queue.length;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */
