String longestPalindrome(String s) {
  int start = 0;
  int maxLength = 1;

  for (int i = 0; i < s.length; i++) {
    // Odd length palindromes
    int left = i, right = i;
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      if (right - left + 1 > maxLength) {
        start = left;
        maxLength = right - left + 1;
      }
      left--;
      right++;
    }

    // Even length palindromes
    left = i;
    right = i + 1;
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      if (right - left + 1 > maxLength) {
        start = left;
        maxLength = right - left + 1;
      }
      left--;
      right++;
    }
  }

  return s.substring(start, start + maxLength);
}