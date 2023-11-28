void main() {
  final numbers = [15, 28, 33, 9, 42, 5, 7, 56, 20, 14, 73, 18];
  print('Maximum: ${findMaximum(numbers)}');
  print('Minimum: ${findMinimum(numbers)}');
  print('Sum: ${calculateSum(numbers)}');
  print('Average: ${calculateAverage(numbers)}');
}

int findMaximum(List<int> numbers) {
  int max = numbers[0];
  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

int findMinimum(List<int> numbers) {
  int min = numbers[0];
  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }
  return min;
}

int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }
  double sum = calculateSum(numbers).toDouble();
  return sum / numbers.length;
}
