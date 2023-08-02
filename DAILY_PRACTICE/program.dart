/*
Accept value frome user
*/

import 'dart:io';
void main(){
  print("Enter your name : ");
  String? name = stdin.readLineSync();
  print("Enter your Age : ");
  int? age = int.parse(stdin.readLineSync()!);
  print("Hello my name is : $name");
  print("My Age is : $age");
}