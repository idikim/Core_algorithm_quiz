class Solution {
  void setZeroes(List<List<int>> matrix) {
    int m = matrix.length;
    int n = matrix[0].length;

    bool firstRowHasZero = matrix[0].contains(0);
    bool firstColHasZero = matrix.any((row) => row[0] == 0);

    for (var i = 1; i < m; i++) {
      for (var j = 1; j < n; j++) {
        if (matrix[i][j] == 0) {
          matrix[i][0] = 0;
          matrix[0][j] = 0;
        }
      }
    }
    for (var i = 1; i < m; i++) {
      if (matrix[i][0] == 0) {
        for (var j = 1; j < n; j++) {
          matrix[i][j] = 0;
        }
      }
    }
    for (var j = 1; j < n; j++) {
      if (matrix[0][j] == 0) {
        for (var i = 1; i < m; i++) {
          matrix[i][j] = 0;
        }
      }
    }
    if (firstRowHasZero) {
      for (var j = 0; j < n; j++) {
        matrix[0][j] = 0;
      }
    }
    if (firstColHasZero) {
      for (var i = 0; i < m; i++) {
        matrix[i][0] = 0;
      }
    }
  }
}

void main() {
  List<List<int>> matrix = [
    [0, 1, 2, 0],
    [3, 4, 5, 2],
    [1, 3, 1, 5]
  ];

  Solution solution = Solution();
  solution.setZeroes(matrix);

  for (List<int> row in matrix) {
    print(row);
  }
}
