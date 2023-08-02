import 'dart:io';

void main() {

  print("Enter Number 1 : ");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("Enter Number 2 : ");
  int? num2 = int.parse(stdin.readLineSync()!);

  print("Addition is : ${num1+num2}");
  print("Substraction is : ${num1-num2}");
  print("Multiplication is : ${num1*num2}");
  print("Division is : ${num1/num2}");
}