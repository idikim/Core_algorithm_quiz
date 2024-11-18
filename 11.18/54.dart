class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    int top = 0,
        bottom = matrix.length - 1,
        left = 0,
        right = matrix[0].length - 1;
    List<int> result = [];
    while (top <= bottom && left <= right) {
      for (int i = left; i <= right && top <= bottom; i++)
        result.add(matrix[top][i]);
      top++;

      for (int i = top; i <= bottom && left <= right; i++)
        result.add(matrix[i][right]);
      right--;
      for (int i = right; i >= left && top <= bottom; i--)
        result.add(matrix[bottom][i]);
      bottom--;
      for (int i = bottom; i >= top && left <= right; i--)
        result.add(matrix[i][left]);
      left++;
    }
    return result;
  }
}

void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  Solution solution = Solution();
  print(solution.spiralOrder(matrix));
}
