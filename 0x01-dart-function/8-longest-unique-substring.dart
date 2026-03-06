String longestUniqueSubstring(String str) {
  int maxLength = 0;
  String longestSubstring = '';
  Map<String, int> charIndexMap = {};
  int start = 0;

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]! >= start) {
      start = charIndexMap[currentChar]! + 1;
    }

    charIndexMap[currentChar] = end;

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}