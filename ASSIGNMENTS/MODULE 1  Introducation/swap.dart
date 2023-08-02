import 'dart:io';

void main() {
  print("Enter the number 1 : ");
  var num1 = int.parse(stdin.readLineSync()!);
   print("Enter the number 2 : ");
  var num2= int.parse(stdin.readLineSync()!);

  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;

  print("After the swapping, numer num1 = $num1 and num2 = $num2");

}