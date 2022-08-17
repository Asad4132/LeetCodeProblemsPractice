void main(List<String> arguments) {
  String s = 'leetcode';
  print(convert(s, 3));
}

String convert(String s, int numRows) {
  if (numRows == 1) {
    return s;
  }
  String converted = '';
  Map stringZigZagMap = {};
  int rowNumber = 0;
  bool isDirectionDown = true;
  for (int i = 0; i < s.length; i++) {
    stringZigZagMap[rowNumber] = (stringZigZagMap[rowNumber] ?? '') + s[i];
    if (rowNumber < numRows - 1 && isDirectionDown) {
      rowNumber++;
    } else if (rowNumber > 0 && !isDirectionDown) {
      rowNumber--;
    } else if (isDirectionDown) {
      isDirectionDown = false;
      rowNumber--;
    } else {
      isDirectionDown = true;
      rowNumber++;
    }
  }
  for (String str in stringZigZagMap.values) {
    converted += str;
  }
  return converted;
}
