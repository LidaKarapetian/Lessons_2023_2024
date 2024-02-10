// Create a class MathUtils with static methods like add, subtract, multiply, and divide.

class MathUtils {
  static double add(double number_1, double number_2) {
    return number_1 + number_2;
  }

  static double subtract(double number_1, double number_2) {
    return number_1 - number_2;
  }

  static double multiply(double number_1, double number_2) {
    return number_1 * number_2;
  }

  static double divide(double number_1, double number_2) {
    if (number_2 != 0) {
      return number_1 / number_2;
    } else {
      throw ArgumentError('Cannot divide by zero');
    }
  }
}

void main() {
  double num_1 = 10;
  double num_2 = 4;
  print("add ${MathUtils.add(num_1, num_2)}");
  print("subtract ${MathUtils.subtract(num_1, num_2)}");
  print("multiply ${MathUtils.multiply(num_1, num_2)}");
  print("divide ${MathUtils.divide(num_1, num_2)}");
}
