import 'dart:io';

void main() {
  var student_list = [];
  print('How many are you student add? Enter the number : ');
  var n = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= n; i++) {
    print('Enter your Student name : ');
    var name = stdin.readLineSync()!;
    student_list.add(name);
  }
  print("Your student name is : $student_list");
}
