// Write a dart function that takes a day(integer - user input) and returns the week(enum) by day.
// Then write a dart function which checks a week for working/non-workings days 
//and print "Today is working(non-working) day"(if it is Sat and Sunday it's not working day). 
//Consider to write with callback. Give above function as a parameter of this function and execute.
import 'dart:io';

enum Weeks{Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday}

Weeks weeksNames(int weekNum){
  switch(weekNum){
    case 1:
      return Weeks.Monday;
    case 2:
      return Weeks.Tuesday;
    case 3:
      return Weeks.Wednesday;
    case 4:
      return Weeks.Thursday;
    case 5:
      return Weeks.Friday;
    case 6:
      return Weeks.Saturday;
    case 7:
      return Weeks.Sunday;
    default:
      throw Exception("Invalid day");     
  }
}

void getWorkingDay(Weeks Function(int day) week, int user_input) {
  void checkDay(int day) {
    Weeks weekNum = week(day);
    if (weekNum == Weeks.Saturday || weekNum == Weeks.Sunday) {
      print("Today is a non-working day");
    } else {
      print("Today is a working day");
    }
  }
  checkDay(user_input);
}

void main() {
  print("Enter a number corresponding to the day (1 - 7):");
  int userInput = int.parse(stdin.readLineSync() !);
  getWorkingDay(weeksNames, userInput);
}

