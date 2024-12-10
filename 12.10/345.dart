String reverseVowels(String s) {
  final vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};

  List<String> chars = s.split('');

  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    while (left < right && !vowels.contains(chars[left])) {
      left++;
    }

    while (left < right && !vowels.contains(chars[right])) {
      right--;
    }

    if (left < right) {
      String temp = chars[left];
      chars[left] = chars[right];
      chars[right] = temp;

      left++;
      right--;
    }
  }
  return chars.join('');
}
