// 1. Write a Dart program that takes a user's name as input 
// and prints a customized greeting using string interpolation.
// e.g.
// 	Input: USERNAME
// 	Result: Hello USERNAME
// Then insert 2 numbers: USER weight and height, calculate his BMI and concatenate it in the string above.
// 	Final result: Hello USERNAME. Your BMI is USER'S_BMI.

import 'dart:io';

double calculateBMI(double weight, double height){
  if(weight <= 0 && height <= 0){
    print("Weigth and heigth must be greater than 0!!");
  }
  return weight / (height * height);
}

void main(){
  stdout.write('Enter your name: ');
  String? UserName = stdin.readLineSync();
  if (UserName != null){
    stdout.write('Enter your weight: ');
    double? weight = double.tryParse(stdin.readLineSync() ?? '');
    stdout.write('Enter your height: ');
    double? height = double.tryParse(stdin.readLineSync() ?? '');

    if (weight != null && height != null){
      double user_BMI = calculateBMI(weight, height);
      print("Hello $UserName. Your BMI is $user_BMI");
    }
  }
}

// 2. Create a Dart program that performs basic arithmetic operations 
//(addition, subtraction, multiplication, division) on two numbers entered by the user. 

double operations(String actionSign, double? num1, double? num2) {
  num1 ??= 0; // Assigns 0 if num1 is null
  num2 ??= 0; 

  double result = 0;

  if (actionSign == '+') {
    result = num1 + num2;
  } else if (actionSign == '-') {
    result = num1 - num2;
  } else if (actionSign == "*") {
    result = num1 * num2;
  } else if (actionSign == "/") {
    if (num2 == 0) {
      throw ArgumentError('Division by zero is not allowed');
    }
    result = num1 / num2;
  } else {
    throw ArgumentError('Invalid operation sign');
  }

  return result;
}

void main() {
  String actionSign = '+';
  double? num1 = 2;
  double? num2 = 9;

  try {
    print(operations(actionSign, num1, num2));
  } catch (e) {
    print('Error: $e');
  }
}

//3.  Write a Dart function that takes a numeric string as input and converts it to an integer. Handle cases where the input might not be a valid number.

int? convertStrToInt(String str) {
  int? intResult;
  try {
    intResult = int.tryParse(str);
  } catch (e) {
    print('Error: $e');
  }
  return intResult;
}

void main() {
  String numericString = '123'; 
  int? convertedStr = convertStrToInt(numericString);

  if (convertedStr != null) {
    print('Converted number: $convertedStr, type is ${convertedStr.runtimeType}');
  } else {
    print('Invalid input: Not a valid number');
  }
}

// 4. Write a Dart program that takes a user's age as input. 
//Use a conditional expression to print "Minor" if the age is less than 18, "Adult" if it is 18 or older, and "Unknown" if the age is null.

void main() {
  stdout.write('Enter your age: ');
  int? userAge = int.parse(stdin.readLineSync()!);

  String level = userAge != null
      ? (userAge < 18 ? 'Minor' : 'Adult')
      : 'Unknown';

  print('Level: $level');
}

//5. Write a Dart function that accepts nullable parameters and provides a default value if any of them is null.

void Values({int? a, String? b}) {
  final int defaultA = a ?? 10;
  final String defaultB = b ?? 'string';

  print('a: $defaultA');
  print('b: $defaultB');
}

void main(){
  Values();
}

//6.Define two Dart functions: one that takes a nullable integer and doubles it, and another that takes a nullable integer and squares it. 
//Compose these functions to create a new function that doubles and then squares a nullable integer.

int? doubleNullable(int? number) {
  return number != null ? number * 2 : null;
}

int? squareNullable(int? number) {
  return number != null ? number * number : null;
}

int? doubleAndSquareNullable(int? number) {
  return squareNullable(doubleNullable(number));
}

void main() {
  int? nullableNumber = 10; 

  int? result = doubleAndSquareNullable(nullableNumber);

  if (result != null) {
    print('Result: $result');
  } else {
    print('Invalid input: Nullable integer was null.');
  }
}

//8.Write a Dart function that takes a dynamic parameter and checks if it is an integer or double, 
//then multiply it by 2; if it's a string, print its length; otherwise, handle the null case.

void check(dynamic value) {
  if (value is int || value is double) {
    print('Result: ${value * 2}');
  } else if (value is String) {
    print('Length of the string: ${value.length}');
  } else {
    print('Invalid input or null parameter.');
  }
}
void main() {
  check(15);
  check(1.2); 
  check('Hello World'); 
  check(true); 
  check(null); 
  
}

