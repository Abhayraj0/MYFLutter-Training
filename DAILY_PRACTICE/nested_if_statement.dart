/*
  one if statement inside the another if statement its called nested if

  if(condition){
    statement
    if(condition){
      statement
    }
  } else{
    statemnt
    if(condition){
      statement
    }
  }
*/

import 'dart:io';
void main(){

  print("Enter your marks : ");
  int? marks = int.parse(stdin.readLineSync()!);

if (marks>=0 && marks<=100) {
     if(marks >= 70){
        print("A Grade..");
      } else if(marks>=60 && marks<70){
        print("B Grade..");
      } else if(marks>=50 && marks <60){
        print("C Grade");
      } else if(marks >=40 && marks <50){
        print("D Grade..");
      } else {
        print("You are failes...!");
      }
  } else {
    print("invalid marks.....");
  }
}