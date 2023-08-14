import 'dart:io';

void main()
{
  print("Enter the number :");
  var num = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <=10; i++) {
    int result = num *i;
    print("$num * $i = $result");
  }
}