/*
  swith statment which is used to check multiple condition

  syntax : 
  switch(condition)
  {
    case :
      statment;
      break;
    case :
      statment;
      break;
    case :
      statment;
      break;
  }
*/

import 'dart:io';
void main()
{
  String? menu = """ 
                    Menu

                Press 1 for sum
                press 2 for mul

   """;
  print(menu);
  print("Enetr your choice : ");
  var choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Additon..");
      print("Enter the number 1 : ");
      var num1 = int.parse(stdin.readLineSync()!);
      print("Enter the number 2 : ");
      var num2 = int.parse(stdin.readLineSync()!);
      var Answer = num1+num2;
      print("Answer is : $Answer");
      break;
     case 2:
      print("Multipication..");
      print("Enter the number 1 : ");
      var num1 = int.parse(stdin.readLineSync()!);
      print("Enter the number 2 : ");
      var num2 = int.parse(stdin.readLineSync()!);
      var Answer = num1*num2;
      print("Answer is : $Answer");
      break;
    default:
      print("Invalid...");
  } 
}