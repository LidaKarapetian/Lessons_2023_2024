// Write a Dart program that calculates and prints the sum of the even numbers using a for loop.

int? SumOfEvenNums(List<int> ls) {
  int sum = 0;
  for (var i = 0; i < ls.length; i++) {
    if (ls[i] % 2 == 0) {
      sum += ls[i];
    }
  }
  return sum;
}

void main() {
  List<int> ls = [1, 4, 9, 16, 80, 47, 6, 2];
  int? sum = SumOfEvenNums(ls);
  print('The sum of even numbers are $sum');
}
