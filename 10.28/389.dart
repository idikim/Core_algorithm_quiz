class Solution {
  String findTheDifference(String s, String t) {
    int charSumS = s.runes.fold(0, (sum, char) => sum + char);
    int charSumT = t.runes.fold(0, (sum, char) => sum + char);

    return String.fromCharCode(charSumT - charSumS);
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findTheDifference('verygood', 'verygoodu'));
}
