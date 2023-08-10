import 'dart:io';

void main()
{
  List<String> Students = [];

  int status = 0;

  while (status <= 10) {
    print("Enter Student name : ");
    String? name = stdin.readLineSync()!;
      Students.add(name);
  status++;
  }
  for (var item in Students) {
    print(item);
  }
}