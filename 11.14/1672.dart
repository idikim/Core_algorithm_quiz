import 'dart:math';

class Solution {
// 기존 최대값 합계, 고객의 자산합 변수 지정 후 비교

  int maximumWealth(List<List<int>> accounts) {
    int maxWealth = 0;
    for (var customer in accounts) {
      int customerWealth = customer.reduce((a, b) => a + b);
      maxWealth = max(maxWealth, customerWealth);
    }
    return maxWealth;
  }
}

void main() {
  List<List<int>> accounts = [
    [2, 8, 7],
    [7, 1, 3],
    [1, 9, 5]
  ];

  Solution solution = Solution();

  print(solution.maximumWealth(accounts));
}
