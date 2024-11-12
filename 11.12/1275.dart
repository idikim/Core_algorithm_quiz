class Solution {
  List<List<String>> board = List.generate(3, (_) => List.filled(3, ''));

  String? tictactoe(List<List<int>> moves) {
    for (int i = 0; i < moves.length; i++) {
      int row = moves[i][0];
      int col = moves[i][1];

      board[row][col] = (i % 2 == 0) ? 'A' : 'B';
    }

    if (checkWin("A")) return "A";
    if (checkWin("B")) return "B";

    return moves.length == 9 ? "Draw" : "Pending";
  }

  bool checkWin(String player) {
    for (int i = 0; i < 3; i++) {
      if ((board[i][0] == player &&
              board[i][1] == player &&
              board[i][2] == player) ||
          (board[0][i] == player &&
              board[1][i] == player &&
              board[2][i] == player)) {
        return true;
      }
    }
    if ((board[0][0] == player &&
            board[1][1] == player &&
            board[2][2] == player) ||
        (board[0][2] == player &&
            board[1][1] == player &&
            board[2][0] == player)) {
      return true;
    }
    return false;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.tictactoe([
    [0, 0],
    [1, 0],
    [2, 2],
    [0, 1],
    [1, 1]
  ])); //A가 대각선을 차지하여 승리!
}
