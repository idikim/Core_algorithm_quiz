class Solution {
  List<int> countBits(int n) {
    List<int> dp = List.filled(n + 1, 0);
    for (int i = 1; i <= n; i++) {
      dp[i] = dp[i >> 1] + (i & 1);
      // print(
      //     '\n$i (${i.toRadixString(2)} = 시프트 => ${(i >> 1).toRadixString(2)}) ${i >> 1}');
      // print('${i.toRadixString(2)} & 1 : ${i & 1}');
      // print('------------------------------');
      // print('dp[$i] = dp[${i >> 1}] + ${i & 1}\n');
    }
    return dp;
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  int n = 16;
  print(solution.countBits(n));
}
