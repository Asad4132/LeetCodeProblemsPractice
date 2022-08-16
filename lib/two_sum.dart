void main() {
  var numbers = [3, 2, 4], target = 6;
  print(twoSum(numbers, target));
}

List<int> twoSum1(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      print('$i $j');
      if (numbers[i] + numbers[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}

List<int> twoSum2(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers.contains(target - numbers[i])) {
      var secondIndex = numbers.indexOf(target - numbers[i]);
      if (i != secondIndex) {
        return [i, secondIndex];
      }
    }
  }
  return [];
}

List<int> twoSum(List<int> numbers, int target) {
  var m = {};
  for (int i = 0; i < numbers.length; i++) {
    if (m[target - numbers[i]] != null) {
      return [i, m[target - numbers[i]]];
    }
    m[numbers[i]] = i;
  }
  return [];
}
