bool isPalindrome(String s) {
  // Remove non-alphanumeric characters and convert to lowercase
  s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  // Compare the string with its reverse
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}