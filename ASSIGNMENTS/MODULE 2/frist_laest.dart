import 'dart:io';

void main()
{
  print("Enter the Number : ");
  var number  = int.parse(stdin.readLineSync()!);

  int fristDigitnumber = number;
  while (fristDigitnumber >= 10) {
    fristDigitnumber ~/= 10;
  }
  int lastDigitnumber = number % 10;

  int sum = fristDigitnumber + lastDigitnumber;
  print("Your first and last digit number is : $sum");

}