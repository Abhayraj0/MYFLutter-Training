import 'dart:io';

void main()
{
  print("Enter your Year : ");
  var year = int.parse(stdin.readLineSync()!);

  if (year %4 == 0 && year %100 != 0) 
  {
    print("$year This year is leap year 'True'");
  } 
  else 
  {
    print("$year This year is't leap year 'False' ");
  }
}