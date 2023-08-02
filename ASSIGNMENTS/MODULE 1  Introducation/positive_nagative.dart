/*
  positive number write in o small to >;
  nagative number write in 0 big to <;
*/
import 'dart:io';

void main(){

  print("Enter the number : ");
  int? num = int.parse(stdin.readLineSync()!);
  if(num> 0){
    print("your number is positive number : $num");
  } else {
    print("your number is nagative number : $num");

  }
}