/*
  Syntax : Teranary Operator..

  The ternary operator (condition) ? (expression if true) : (expression if false)
*/

import 'dart:io';
void main() 
{
  print("Enter the number 1 : ");
  var num1 = int.parse(stdin.readLineSync()!);
  print("Enter the number 2 : ");
  var num2 = int.parse(stdin.readLineSync()!);
  print("Enter the number 3 : ");
  var num3 = int.parse(stdin.readLineSync()!);

  var maxNumber = num1 >=num2 ? (num1>=num3 ? num1 : num3) : (num2>=num3 ? num2 : num3);
  print("Your max number is $maxNumber");
}