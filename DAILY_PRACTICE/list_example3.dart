import 'dart:io';

void main()
{
  List<String> subjects = [];
  bool status = true;
  while (status) {
    print("Enter subject name : ");
    String? name = stdin.readLineSync()!;
    subjects.add(name);

    print("Do you want to continue press y for yes and press n for no : ");
    String? choice = stdin.readLineSync()!;
    if (choice == 'y') {
      status = true;
    } else {
      status = false;
    }
  } 
  for (var item in subjects) {
    print(item);
  }
}