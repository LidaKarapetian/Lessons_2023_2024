// Write a program (using functions!) that asks the user for a long string containing multiple words. 
//Print back to the user the same string, except with the words in backwards order.

import 'dart:io';

String? getUserInput(){
  stdout.write('Enter the string: ');
  String? str = stdin.readLineSync();
  return str;
}

String? reverseStr(String? Function() input){
  String? str = input();
  List<String> sentence = str!.split(' ');
  List<String> reversedSentence = sentence.reversed.toList();
  return reversedSentence.join(' ');
}

void main(){
  String? str =reverseStr(getUserInput);
  print(str);
}




