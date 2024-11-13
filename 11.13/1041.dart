class Solution {
  bool isRobotBounded(String instructions) {
    // 초기 위치 및 방향 설정
    int x = 0, y = 0; // 초기 위치 (0, 0)
    int dirX = 0, dirY = 1; // 초기 방향 (북쪽)

    // 명령 수행
    for (var instruction in instructions.split('')) {
      if (instruction == 'G') {
        // 현재 방향으로 전진
        x += dirX;
        y += dirY;
        print('x = $x, y = $y\ndirX = $dirX, dirY = $dirY\n');
      } else if (instruction == 'L') {
        // 왼쪽으로 회전: 북->서, 서->남, 남->동, 동->북
        int temp = dirX;
        dirX = -dirY;
        dirY = temp;
        print('x = $x, y = $y\ndirX = $dirX, dirY = $dirY\n');
      } else if (instruction == 'R') {
        // 오른쪽으로 회전: 북->동, 동->남, 남->서, 서->북
        int temp = dirX;
        dirX = dirY;
        dirY = -temp;
        print('x = $x, y = $y\ndirX = $dirX, dirY = $dirY\n');
      }
    }

    // 원점이거나 초기 방향과 다른 방향을 향하고 있으면 원 안에 머무를 가능성이 있음
    return (x == 0 && y == 0) || (dirX != 0 || dirY != 1);
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isRobotBounded('GGLLGG'));
}
