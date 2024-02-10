// Define a class Animal with a method makeSound().
//Then create subclasses like Dog, Cat, and Cow
//overriding the makeSound() method to produce different sounds.

abstract class Animal {
  void makeSound() {
    print("Animal make sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

class Cow extends Animal {
  @override
  void makeSound() {
    print("Cow moos");
  }
}

void main() {
  Animal dog = Dog();
  dog.makeSound();

  Animal cat = Cat();
  cat.makeSound();

  Animal cow = Cow();
  cow.makeSound();
}
