//Define an interface Flyable with a method fly().
// Then create classes like Bird and Airplane implementing the Flyable interface.

abstract interface class Flyable {
  void fly();
}

class Bird implements Flyable {
  @override
  void fly() {
    print("Bird flies");
  }
}

class Airplane implements Flyable {
  @override
  void fly() {
    print("Airplane flies");
  }
}

void main() {
  Flyable bird = Bird();
  bird.fly();

  Flyable airplane = Airplane();
  airplane.fly();
}
