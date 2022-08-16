void main(List<String> arguments) {
  String s = 'abcabcbb';
  print(lengthOfLongestSubstring(s));
}

int lengthOfLongestSubstring(String s) {
  int longestStringLength = 0;
  Map longestString = {};
  for (int i = 0; i < s.length; i++) {
    if (longestString[s[i]] != null) {
      if (longestString.length > longestStringLength) {
        longestStringLength = longestString.length;
      }
      longestString.removeWhere((key, value) => value < longestString[s[i]]);
      longestString[s[i]] = i;
    } else {
      longestString[s[i]] = i;
    }
  }
  if (longestStringLength < longestString.length) {
    return longestString.length;
  }
  return longestStringLength;
}

int lengthOfLongestSubstring1(String s) {
  int longestStringLength = 0;
  Map longestString = {};
  for (int i = 0; i < s.length; i++) {
    if (longestString[s[i]] != null) {
      if (longestString.length > longestStringLength) {
        longestStringLength = longestString.length;
      }
      i = i - longestString.length + 1;
      longestString.clear();
      longestString[s[i]] = s[i];
    } else {
      longestString[s[i]] = s[i];
    }
  }
  if (longestStringLength < longestString.length) {
    return longestString.length;
  }
  return longestStringLength;
}
