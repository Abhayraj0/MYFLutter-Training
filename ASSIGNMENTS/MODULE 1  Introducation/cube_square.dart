/*
 3. Write a program to make a square and cube of number.
*/
import 'dart:io';
void main() 
{
  print("Enter the number");
  double? num = double.parse(stdin.readLineSync()!);
  print( "Your number is : $num");

  double? squre = num * num;
  double? cube = num * num * num;
  print("YOur Square is : $squre");
  print("Your Cube is : $cube");

}