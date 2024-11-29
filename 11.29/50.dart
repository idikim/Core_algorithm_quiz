class Solution {
  double myPow(double x, int n) {
    if (n == 0) return 1;
    if (n < 0) {
      x = 1 / x;
      n = -n;
    }
    double halfPow = myPow(x, n ~/ 2);
    return (n % 2 == 0) ? halfPow * halfPow : halfPow * halfPow * x;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.myPow(55, 3));
}
