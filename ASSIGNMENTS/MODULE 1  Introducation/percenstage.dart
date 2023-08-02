/*
  8. Write a program to calculate sum of 5 subjects & find the
percentage. Subject marks entered byuser.
*/

import 'dart:io';
void main() 
{
  print("Enter the Subjects Marks...");
  print("Enter subjects 1 : ");
  var sub1 = int.parse(stdin.readLineSync()!);
  print("Enter subjects 2 : ");
  var sub2 = int.parse(stdin.readLineSync()!);
  print("Enter subjects 3 : ");
  var sub3 = int.parse(stdin.readLineSync()!);
  print("Enter subjects 4 : ");
  var sub4 = int.parse(stdin.readLineSync()!);
  print("Enter subjects 5 : ");
  var sub5 = int.parse(stdin.readLineSync()!);

  var total = sub1+sub2+sub3+sub4+sub5;
  print("Your Total is $total");
  var per = total/500*100;
  print("Your Percenstage is $per");
}