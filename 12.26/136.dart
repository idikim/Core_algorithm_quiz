class Solution {
  int singleNumber(List<int> nums) {
    int example = 0;
    for (int num in nums) {
      example ^= num;
    }
    return example;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.singleNumber([2, 2, 1]));
  print(solution.singleNumber([4, 1, 2, 1, 2]));
}
