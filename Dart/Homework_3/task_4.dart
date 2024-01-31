// Write a Dart program that calculates and prints the factorial of a given number.

import 'dart:io';

int? Factorial(int num) {
  int result = 1;
  if (num < 0) {
    return 0;
  } else if (num == 0 || num == 1) {
    return 1;
  } else {
    for (int i = 2; i <= num; i++) {
      result *= i;
    }
    return result;
  }
}

void main() {
  stdout.write('Enter the number: ');
  int? number;

  try {
    number = int.parse(stdin.readLineSync()!);
    int? NumF = Factorial(number);
    print('$number ! = $NumF');
  } catch (e) {
    print('Invalid input or null value');
  }
}
