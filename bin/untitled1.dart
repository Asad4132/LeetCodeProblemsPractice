import 'package:untitled1/find_median_sorted_arrays.dart' as untitled1;

void main(List<String> arguments) {
  List<int> numbers1 = [1];
  List<int> numbers2 = [0];
  print(findMedianSortedArrays(numbers1, numbers2));
}

double findMedianSortedArrays(List<int> numbers1, List<int> numbers2) {
  List<int> allNumbers = [];
  for (int i = 0, j = 0;;) {
    if (i < numbers1.length && j < numbers2.length) {
      if (numbers1[i] < numbers2[j]) {
        allNumbers.add(numbers1[i]);
        i++;
      } else {
        allNumbers.add(numbers2[j]);
        j++;
      }
    } else if (i < numbers1.length) {
      allNumbers.add(numbers1[i]);
      i++;
    } else if (j < numbers2.length) {
      allNumbers.add(numbers2[j]);
      j++;
    } else {
      break;
    }
  }
  double median;
  if (allNumbers.length % 2 == 0) {
    median = (allNumbers[allNumbers.length ~/ 2] +
            allNumbers[(allNumbers.length ~/ 2) - 1]) /
        2;
  } else {
    median = allNumbers[allNumbers.length ~/ 2].toDouble();
  }
  return median;
}
