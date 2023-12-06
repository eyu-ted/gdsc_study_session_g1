import 'dart:io';

class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double? division(double num1, double num2) {
    try {
      if (num2 == 0) throw Exception("Cannot divide by zero");
      return num1 / num2;
    } catch (e) {
      print(e);
      return null;
    }
  }
}

void main() async {
  Calculator calculator = new Calculator();
  print('Enter the first number:');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Enter the second number:');
    double num2 = double.parse(stdin.readLineSync()!);
  print("Wait");
  Future.delayed(Duration(seconds: 5), () {
    print("Result of addition:${calculator.add(num1, num2)}");
    print("Result of subtract:${calculator.subtract(num1, num2)}");
    print("Result of multiplication:${calculator.multiply(num1, num2)}");
    print("Result of division:${calculator.division(num1, num2)}");
  });
}
