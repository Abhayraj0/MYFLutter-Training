import 'dart:io';

void main() 
{
  String Menu = """

      ***********  Menu  ***********
              1. Addition
              2. Subtraction 
              3. Multiplication
              4. Division
      ******************************
                """;
  print(Menu);
  print("Enter Your Chocie Number : ");
  var choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print("             Addition Programm");
      print("Enter a number 1 : ");
      var num1 = int.parse(stdin.readLineSync()!);
      print("Enter a number 2 : ");
      var num2 = int.parse(stdin.readLineSync()!);
      var add = num1 + num2;
      print("Your Addition is $add");
      break;
    case 2:
      print("             Subtracation Programm");
      print("Enter a number 1 : ");
      var num1 = int.parse(stdin.readLineSync()!);
      print("Enter a number 2:");
      var num2 = int.parse(stdin.readLineSync()!);
      var sub = num1 - num2;
      print("Your Subtracation is $sub");
      break;
    case 3:
      print("             Multiplication Programm");
      print("Enter a number 1 : ");
      var num1 = int.parse(stdin.readLineSync()!);
      print("Enter a number 2 : ");
      var num2 = int.parse(stdin.readLineSync()!);
      var mul = num1 * num2;
      print("Your Addition is $mul");
      break;
    case 4:
      print("             Division Programm");
      print("Enter a number 1 : ");
      var num1 = int.parse(stdin.readLineSync()!);
      print("Enter a number 2:");
      var num2 = int.parse(stdin.readLineSync()!);
      var div = num1 / num2;
      print("Your Subtracation is $div");
      break;
    default:
      print("Invalid Number..!");
      break;
  }

}