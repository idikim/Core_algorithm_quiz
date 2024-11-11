class Moving {
  bool judgeCircle(String moves) {
    int x = 0, y = 0;

    for (int i = 0; i < moves.length; i++) {
      if (moves[i] == 'U') {
        y++; // 위로 이동
      } else if (moves[i] == 'D') {
        y--; // 아래로 이동
      } else if (moves[i] == 'L') {
        x--; // 왼쪽으로 이동
      } else if (moves[i] == 'R') {
        x++; // 오른쪽으로 이동
      }
    }

    return x == 0 && y == 0; // 원래 위치인지 확인
  }
}

void main() {
  Moving moving = Moving();
  String moves = 'UD';
  print(moving.judgeCircle(moves));
}
