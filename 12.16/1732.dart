class Solution {
  int largestAltitude(List<int> gain) {
    int maxAltitude = 0;
    int currentAltitud = 0;

    for (var change in gain) {
      currentAltitud += change;
      if (currentAltitud > maxAltitude) {
        maxAltitude = currentAltitud;
      }
    }
    return maxAltitude;
  }
}
