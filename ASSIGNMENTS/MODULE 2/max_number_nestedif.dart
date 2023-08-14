import 'dart:io';

void main() {
  print("Enter the number 1 : ");
  var num1 = int.parse(stdin.readLineSync()!);
  print("Enter the number 2 : ");
  var num2 = int.parse(stdin.readLineSync()!);
  print("Enter the number 3 : ");
  var num3 = int.parse(stdin.readLineSync()!);

  var maxNumber;
  if (num1 >= num2) {
    if(num1 >= num3) {
      maxNumber = num1;
    } else {
      maxNumber = num3;
    }
  } else {
      if (num2 >= num3) {
        maxNumber = num2;
      } else {
        maxNumber = num3;
      }
  }

  print("Your max number is $maxNumber");
}