class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int count = 0;
    int length = flowerbed.length;

    for (int i = 0; i < length; i++) {
      if (flowerbed[i] == 0 &&
          (i == 0 || flowerbed[i - 1] == 0) &&
          (i == length - 1 || flowerbed[i + 1] == 0)) {
        flowerbed[i] = 1;
        count++;
        if (count >= n) {
          return true;
        }
      }
    }
    return count >= n;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.canPlaceFlowers([1, 0, 0, 0, 1], 1));
}
