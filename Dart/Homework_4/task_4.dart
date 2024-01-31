//Read the contents of "person.json", deserialize it and print the person's information to the console.

import "dart:io";
import "dart:convert";

void deserializeContent(String jsonFilePath) {
  try {
    File jsonFile = File(jsonFilePath);
    jsonFile.readAsString().then((String contents) {
      Map<String, dynamic> data = jsonDecode(contents);
      List<dynamic> employees = data['employees'];
      employees.forEach((person) {
        print('Name: ${person['name']}');
        print('Email: ${person['email']}');
        print('-----------------------');
      });
    });
  } catch (error) {
    print("$error");
  }
}

void main() {
  String filePath = 'person.json';
  deserializeContent(filePath);
}
