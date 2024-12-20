class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> frequencyMap = {};
    for (var num in arr) {
      frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
    }
    List<int> list = frequencyMap.values.toList();
    return list.length == list.toSet().length;
  }
}

void main(List<String> args) {
  List<int> arr1 = [1, 2, 2, 1, 1, 3];
  List<int> arr2 = [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0];

  Solution solution = Solution();
  print('\n${solution.uniqueOccurrences(arr1)}\n');
  print('${solution.uniqueOccurrences(arr2)}\n');
}
