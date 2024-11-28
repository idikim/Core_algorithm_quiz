class Solution {
  String multiply(String num1, String num2) {
    int number1 = int.parse(num1), number2 = int.parse(num2);
    int result = number1 * number2;
    return result.toString();
  }
}

void main() {
  Solution solution = Solution();
  print(solution.multiply('165', '55'));
}
