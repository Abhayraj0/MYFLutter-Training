import 'dart:io';

void main()
{
  print("Enter choice number : ");
  var choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday");
      break;
    default:
      print("Invalid Number...?");
      break;
  }
}