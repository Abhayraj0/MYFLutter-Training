
import 'dart:io';

void main() 
{
  print("********Enter Your Subject Marks********");
  print("Enter Subj 1 Marks : ");
  int? sub1 = int.parse(stdin.readLineSync()!);
  print("Enter Subj 2 Marks : ");
  int? sub2 = int.parse(stdin.readLineSync()!);
  print("Enter Subj 3 Marks : ");
  int? sub3 = int.parse(stdin.readLineSync()!);
  print("Enter Subj 4 Marks : ");
  int? sub4 = int.parse(stdin.readLineSync()!);
  print("Enter Subj 5 Marks : ");
  int? sub5 = int.parse(stdin.readLineSync()!);

  var total = sub1 + sub2 + sub3 + sub4 + sub5;
  var per = (total/500) * 100;

  print("Your total is $total");
  print("Your percentage is $per");

  if (per >75) {
    print("Distinction");
  } else if(per>60 && per<=75) {
    print("First Class");
  } else if(per>50 && per<=60) {
    print("Second Class");
  } else if(per>35 && per<=50) {
    print("Pass Class");
  } else {
    print("You are fail");
  }
}