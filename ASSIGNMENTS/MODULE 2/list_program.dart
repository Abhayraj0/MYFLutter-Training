import 'dart:io';

void main()
{
  print("Your List Program..");
  var Student_List = [];
  bool mainstatus = true;
  bool status = true;
  
 while (mainstatus) {
    String menu = """ 
      **********************************
                      Menu
                1) add detailes.
                2) show data.
      **********************************
   """;
   print(menu);
  print('enter your choice : ');
  var choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      while(status){
        for (var i = 1; i < 2; i++) {
           print('Enter your name : ');
        var name = stdin.readLineSync()!;
        print('enter your course : ');
        var course = stdin.readLineSync()!;
        print('enter your age : ');
        var age = int.parse(stdin.readLineSync()!);
        print('**************');
        Student_List.add(name);
        Student_List.add(course);
        Student_List.add(age); 
        }
        print('Do you want to add\n press y for yes \n press n for no : ');
        var maincho = stdin.readLineSync()!;
        if (maincho == 'y' || maincho == 'Y') {
          status = true;
        } else {
          status = false;
        }
      }
      // ignore: dead_code
      break;
        
    case 2:
      for(var item in Student_List)
      {
        print(item);
      }
      print('**************');
      break;
    default:
      print('Invaild choice..');
  }

  print('Do you want to continue \npress y for yes \n press n for no : ');
  var mainchoice = stdin.readLineSync()!;
  if (mainchoice == 'y' || mainchoice == 'Y') {
    mainstatus = true;
  } else {
    mainstatus = false;
  }
 }
}