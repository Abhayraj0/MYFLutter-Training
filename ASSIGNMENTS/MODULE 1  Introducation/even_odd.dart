import 'dart:io';

void main(){

  print("Enter one number : ");
  int? num  = int.parse(stdin.readLineSync()!);

  if (num %2 != 0){
    print("Your number is odd..");
  } else {
    print("your number is even..");
  }

}