import 'dart:io';

class Calculator {
  double addition(double num1, double num2) {
    return num1 + num2;
  }

  double subtraction(double num1, double num2) {
    return num1 - num2;
  }

  double multiplication(double num1, double num2) {
    return num1 * num2;
  }

  double division(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      return double.parse('Error: Division by zero is not allowed.');
    }
  }
}

void main() {
  var calculator = Calculator();
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);
  print('Enter operator:');
  String? operator = stdin.readLineSync();

  if (operator == '+') {
    print("the sum is : ${calculator.addition(num1, num2)}");
  } else if (operator == '-') {
    print("the substruct is : ${calculator.subtraction(num1, num2)}");
  } else if (operator == '*') {
    print("the multply is : ${calculator.multiplication(num1, num2)}");
  } else if (operator == '/') {
    double result = calculator.division(num1, num2);
    if (!result.isNaN) {
      print('The result is: $result');
    }
  } else {
    print('Error: Invalid operator entered.');
  }
}
