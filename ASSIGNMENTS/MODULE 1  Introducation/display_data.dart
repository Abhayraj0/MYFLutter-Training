/*
  1. Display This Information using print
• Your Name
• Your Birth date
• Your Age
• Your Address
*/

import 'dart:io';
void main() 
{
  print("Enter your Name : ");
  String? name = stdin.readLineSync();
 
  print("Enter your Brith Date : ");
  String? date = stdin.readLineSync();
  
  print("Enter your Age : ");
  int? age = int.parse(stdin.readLineSync()!);
  
  print("Enter your Address : ");
  String? address = stdin.readLineSync();
  

   print("Your name is $name");
   print("Your Date of Brith is $date");
   print("Your Age is $age");
   print("Your Address is $address");
}