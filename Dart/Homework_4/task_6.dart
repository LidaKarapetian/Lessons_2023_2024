// 6. Write a Dart program that reads a JSON file containing a list of numbers. Sum the numbers and print the result to the console.
//6.1. Modify the program to write the sum to a new file named "sum.txt".

import "dart:convert";
import "dart:io";

int readFromJson(String jsonFilePath) {
  try {
    File jsonFile = File(jsonFilePath);
    String contents = jsonFile.readAsStringSync();
    Map<String, dynamic> data = jsonDecode(contents);
    List<int> numbers = List<int>.from(data['numbers']);
    int sum = numbers.reduce((next, prev) => next + prev);
    return sum;
  } catch (error) {
    print("$error");
    return 0; // or any default value indicating an error
  }
}

void writeSumToFile(int sum, String filePath){
   try{
    File f = File(filePath);
    var writeSum = f.openWrite();
    writeSum.write(sum );
    print("Written to file");
  } catch(e){
    print('$e');
  }
}

void main(){
  String filePath = "sum.txt";
  int sum = readFromJson("numbers.json");
  print("The sum of numbers is: $sum");
  writeSumToFile(sum, filePath);
}