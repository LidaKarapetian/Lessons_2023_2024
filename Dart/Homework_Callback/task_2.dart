//  Write a Dart function called `printMessage` that takes a callback function as a parameter. 
//The callback function should define a message, and `printMessage` should call this callback to obtain the message and then print it. 
//You can use 2 examples of functions that print some String and as a callback execute into `printMessage`.

void printMessage(String Function() task){
  print("Hello");
  String Task = task();
  print('It is your task: $Task');
}

String Task_1(){
  return "Write callback function.";
}

void main(){
  printMessage(() => Task_1());
}








