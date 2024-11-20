class Solution {
  double average(List<int> salary) {
    int min = salary.reduce((a, b) => a < b ? a : b);
    int max = salary.reduce((a, b) => a > b ? a : b);
    int sum = salary.reduce((a, b) => a + b);

    return (sum - max - min) / (salary.length - 2);
  }
}

void main() {
  List<int> salary = [4000, 3000, 1000, 2000];

  Solution solution = Solution();
  print(solution.average(salary));
}
