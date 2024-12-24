import 'dart:math';

class Solution {
  int minCostClimbingStairs(List<int> cost) {
    int dp1 = cost[0], dp2 = cost[1];
    for (var i = 2; i < cost.length; i++) {
      int dp = min(dp1, dp2) + cost[i];
      dp1 = dp2;
      dp2 = dp;
    }
    return min(dp1, dp2);
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  List<int> cost1 = [10, 15, 20];
  List<int> cost2 = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1];
  print(solution.minCostClimbingStairs(cost1));
  print(solution.minCostClimbingStairs(cost2));
}
