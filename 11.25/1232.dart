class Solution {
  bool checkStraightLine(List<List<int>> coordinates) {
    int x1 = coordinates[0][0],
        y1 = coordinates[0][1],
        x2 = coordinates[1][0],
        y2 = coordinates[1][1],
        dx = x2 - x1,
        dy = y2 - y1;

    for (var [x3, y3] in coordinates) {
      if ((y3 - y2) * dx != (x3 - x2) * dy) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  List<List<int>> coordinates = [
    [1, 2],
    [2, 3],
    [3, 4],
    [4, 5],
    [5, 6],
    [6, 7]
  ];
  Solution solution = Solution();
  print(solution.checkStraightLine(coordinates));
}
