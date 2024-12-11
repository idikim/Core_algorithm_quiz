class Solution {
  void moveZeroes(List<int> nums) {
    int lastNonZeroIndex = 0;

    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[lastNonZeroIndex] = nums[i];
        lastNonZeroIndex++;
      }
    }
    for (var i = lastNonZeroIndex; i < nums.length; i++) {
      nums[i] = 0;
    }
  }
}
