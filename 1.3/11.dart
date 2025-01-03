import 'dart:math';

class Solution {
  int maxArea(List<int> list) {
    int maxArea = 0;
    int l = 0;
    int r = list.length - 1;

    while (l < r) {
      int side = min(list[r], list[l]);
      int area = side * (r - l).abs();
      maxArea = max(maxArea, area);

      if (list[l] < list[r])
        l++;
      else
        r--;
    }
    return maxArea;
  }
}
