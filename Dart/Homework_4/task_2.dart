// Write a Dart function that takes a filename and a string as parameters and writes the string to the specified file.

import "dart:io";

void writeStrToFile(String str, String filePath){
  try{
    File f = File(filePath);
    var writeInfo = f.openWrite();
    writeInfo.write(str);
    print("Written to file");
  } catch(e){
    print('$e');
  }
}

void main(){
  String str = "Hello World";
  String filePath = "input.txt"; 
  writeStrToFile(str, filePath);
}

