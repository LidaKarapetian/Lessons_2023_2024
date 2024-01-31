// Write a Dart program that generates and prints the first 10 numbers in the Fibonacci sequence

void main() {
  int n = 10;
  FibonacciSequence(n);
}

void FibonacciSequence(int n) {
  int n1 = 0;
  int n2 = 1;
  for (var i = 1; i <= n; i++) {
    print('$n1');
    int next = n1 + n2;
    n1 = n2;
    n2 = next;
  }
}
