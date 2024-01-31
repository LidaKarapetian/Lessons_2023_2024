// Extend the program to check if the file "output.txt" exists.
// If it does, append the contents of "input.txt" to "output.txt"; otherwise, create a new "output.txt" file.

import "dart:io";

void appendToFile(String inputFilePath, String outputFilePath) {
  File outputFile = File(outputFilePath);
  File inputFile = File(inputFilePath);
  List<String> inputContent = inputFile.readAsLinesSync();
  if (outputFile.existsSync()) {
    new File(outputFilePath)
        .writeAsStringSync(inputContent.toString(), mode: FileMode.append);
    print("The content is appended");
  } else {
    var writeInfo = outputFile.openWrite();
    writeInfo.write(inputContent);
    print("The output.txt file is created");
  }
}

void main() {
  String inputFilePath = "input.txt";
  String outputFilePath = "output.txt";
  appendToFile(inputFilePath, outputFilePath);
}
