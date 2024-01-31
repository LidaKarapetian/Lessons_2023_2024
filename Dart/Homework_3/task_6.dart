// Write a Dart program that prints the following pattern using nested loops:
// *
// **
// ***
// ****
// *****

import 'dart:io';

void printTriangle() {
  int rows = 5;
  for (var i = 1; i <= rows; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}

void main() {
  printTriangle();
}
