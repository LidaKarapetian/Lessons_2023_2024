import 'dart:convert';
import 'dart:io';

abstract interface class Auth {
  bool login(String username, String password);
  bool register(String username, String password);
}

class AuthImp implements Auth {
  String filePath = "logpass.json";

  @override
  bool login(String username, String password) {
    try {
      File file = File(filePath);
      if (!file.existsSync()) {
        print('JSON file not found');
        return false;
      }
      String contents = file.readAsStringSync();
      Map<String, dynamic> data = jsonDecode(contents);

      if (data.containsKey(username) && data[username] == password) {
        print('Login successful');
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }

  @override
  bool register(username, password) {
    try {
      File file = File(filePath);
      Map<String, dynamic> data = {};
      if (file.existsSync()) {
        String contents = file.readAsStringSync();
        data = jsonDecode(contents);
      }
      if (data.containsKey(username)) {
        print('Username already exists');
        return false;
      }
      data[username] = password;
      file.writeAsStringSync(jsonEncode(data));
      print('Registration successful');
      return true;
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }
}

void main() {
  Auth authenticator = AuthImp();

  stdout.write("Enter username: ");
  String username = stdin.readLineSync()!;

  stdout.write("Enter password: ");
  String password = stdin.readLineSync()!;

  if (!authenticator.login(username, password)) {
    stdout.write('Login failed. Would you like to register? (yes/no): ');
    String choice = stdin.readLineSync()!;
    if (choice.toLowerCase() == 'yes') {
      stdout.write('Enter a new username: ');
      String newUsername = stdin.readLineSync()!;
      stdout.write('Enter a new password: ');
      String newPassword = stdin.readLineSync()!;
      authenticator.register(newUsername, newPassword);
    }
  }
}
