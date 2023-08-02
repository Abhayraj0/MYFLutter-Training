import 'dart:io';
import 'dart:math';

void main() {
  // // Get the radius from the user
  print("Enter the radius of the circle:");
  double? radius = double.parse(stdin.readLineSync()!);

  double? area = pi * radius * radius;
  print(area);

  // // Calculate the area
  // double area = calculateAreaOfCircle(radius);

  // // Display the result
  // print("The area of the circle is: $area");
}

// // Function to calculate the area of a circle
// double calculateAreaOfCircle(double radius) {
//   const double pi = 3.14159;
//   return pi * (radius * radius);
// }
