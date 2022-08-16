void main(List<String> arguments) {
  String s = 'abciiidef';
  print(maxVowels(s, 3));
}

int maxVowels(String s, int k) {
  int count = 0;
  int maxCount = count;
  for (int i = 0; i < s.length; i++) {
    if (isVowel(s[i])) {
      count++;
    }
    if (i >= k && isVowel(s[i - k])) {
      count--;
    }
    if (maxCount < count) {
      maxCount = count;
    }
  }
  return maxCount;
}

bool isVowel(String s) {
  return (s == 'A' ||
      s == 'E' ||
      s == 'I' ||
      s == 'O' ||
      s == 'U' ||
      s == 'a' ||
      s == 'e' ||
      s == 'i' ||
      s == 'o' ||
      s == 'u');
}
