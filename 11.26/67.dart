class Solution {
  String addBinary(String a, String b) {
// 1. 문자열 뒤 오른쪽부터 차례대로 더하기
// 2. 맨 앞에 0 없애기
    StringBuffer result = StringBuffer();
    int i = a.length - 1,
        j = b.length - 1,
        carry = 0; // 문자열의 가장 마지막자리의 인덱스를 가리킴

    // 두 문자열의 길이가 다를 경우 짧은 문자열 앞에 '0'을 채워 길이를 맞춰주기
    while (i >= 0 || j >= 0 || carry != 0) {
      int sum = carry;
      if (i >= 0) {
        sum += int.parse(a[i]);
        i--;
      }
      if (j >= 0) {
        sum += int.parse(b[j]);
        j--;
      }
      result.write((sum % 2).toString());
      carry = sum ~/ 2;
    }

    // 결과를 반대로 뒤집고 앞의 불필요한 '0' 제거
    return result.toString().split('').reversed.join('').replaceFirst('0*', '');
  }
}
