bool repeatedSubstringPattern(String s) {
  int len = s.length;

  for (int i = 1; i <= len ~/ 2; i++) {
    if (len % i == 0) {
      String pattern = s.substring(0, i);
      String repeatedPattern = pattern * (len ~/ i);
      if (repeatedPattern == s) {
        return true;
      }
    }
  }
  return false;
}
