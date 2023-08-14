import 'dart:io';

void main()
{
  print("Enter the number : ");
  var n = int.parse(stdin.readLineSync()!);
  print("*******************************");
  for (var i = n; i >= 1; i--) {
    print(i);
  }
}