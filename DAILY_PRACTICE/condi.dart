/*
conditional statements in dart

there are mainly 5 type of conditional statements
1 if statement
2 if.. else statement
3 else if statement
4 nested if statement
5 switch statement


*/

import 'dart:io';
void main() {
  print("Enter your Age : ");
  int? age = int.parse(stdin.readLineSync()!);
  if (age >= 18){
    print("You are eligible for votting..");
  }

}