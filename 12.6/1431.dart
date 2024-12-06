class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int maxCandies = candies.reduce((a, b) => a > b ? a : b);

    return candies.map((candy) => candy + extraCandies >= maxCandies).toList();
  }
}

List<int> candies = [2, 3, 5, 1, 3];
int extraCandies = 3;

void main() {
  Solution solution = Solution();
  print(solution.kidsWithCandies(candies, extraCandies));
}
