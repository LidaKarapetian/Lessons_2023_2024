//1. Create a base class Shape with methods area and perimeter.
//Then create subclasses like Rectangle and Circle
//inheriting from Shape and override the respective methods.
// Calculate area and perimeter for both classes.

import 'dart:math';

abstract class Shape {
  num area();
  num perimeter();
}

class Rectangle extends Shape {
  num width;
  num height;

  Rectangle(this.width, this.height);

  @override
  num area() {
    return width * height;
  }

  @override
  num perimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  num radius;

  Circle(this.radius);

  @override
  num area() {
    return pi * radius * radius;
  }

  @override
  num perimeter() {
    return 2 * pi * radius;
  }
}

void main() {
  Shape shape = Rectangle(2, 3);
  print("The area of the Rectangle:  ${shape.area()}");
  print("The perimeter of the Rectangle ${shape.perimeter()}");

  Shape circle = Circle(4);
  print("The area of the Circle:  ${circle.area()}");
  print("The perimeter of the Circle ${circle.perimeter()}");
}
