import 'dart:io';

void main()
{
  print("Enter the principle amout : ");
  var amout = double.parse(stdin.readLineSync()!);
  print("Enter the rate of Interest : ");
  var rate = double.parse(stdin.readLineSync()!);
  print("Enter the time (in year) : ");
  var time = double.parse(stdin.readLineSync()!);

  var simpleInterest = (amout * rate * time) /100;
  print(simpleInterest);

}