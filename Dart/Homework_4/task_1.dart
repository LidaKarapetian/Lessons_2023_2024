// Create a Dart program that reads a text file named "input.txt" and prints its contents to the console.
import "dart:io";

void readTextFromFile(String filePath){
  try{
    File f = new File(filePath);
    List<String> text = f.readAsLinesSync();
    print(text);
  } catch(e){
    print('$e : Please input correct path');
  }
}

void main(){
  readTextFromFile("input.txt");
}