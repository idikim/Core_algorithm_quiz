class Solution {
  diagonalSum(List<List<int>> mat) {
    int sum = 0;
    int n = mat.length;

    for (var i = 0; i < n; i++) {
      //주대각선 합
      sum += mat[i][i];
      //부대각선 합
      sum += mat[i][n - 1 - i];
    }
    if (n % 2 == 1) {
      sum -= mat[n ~/ 2][n ~/ 2];
    }

    return sum;
  }
}

void main() {
  List<List<int>> mat = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  Solution solution = Solution();
  print(solution.diagonalSum(mat));
}
