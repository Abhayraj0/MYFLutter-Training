/* 
Area of a Right Triangle = A = ½ × Base × Height (Perpendicular distance)

*/

import 'dart:io';

void main()
{
  print("Enter the base number : ");
  double? base = double.parse(stdin.readLineSync()!);
  print("Enter the Heigth number : ");
  double? heigth = double.parse(stdin.readLineSync()!);
  
  var h = 1/2 * base * heigth;

  print(h);
}