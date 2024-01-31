//- Write a Dart function called `performOperation` that takes a callback function as a parameter. 
//The callback function should define some operation(let's have calculator example and pass these function as a parameter), 
//and `performOperation` should call this callback and print the result.

void performOperation(int Function() operation) {
  int result = operation();
  print('Result: $result');
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int divide(int a, int b) {
  if (b == 0) {
    throw ArgumentError('Cannot divide by zero');
  }
  return a ~/ b;
}
int multiply(int a, int b) => a * b;

void main(){
  performOperation(() => add(8, 2));
  performOperation(() => subtract(8, 2));
  performOperation(() => divide(8, 3));
  performOperation(() => multiply(8, 2));
}


