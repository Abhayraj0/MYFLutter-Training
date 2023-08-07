import 'dart:io';

void main()
{
  var shopping_list = [];
  int? choice;
  String? itemName;
  String? nextChoice;
  bool mainStaus = true;
  String? mainChoice;
  while (mainStaus) {
      String? menu = """
                          Menu
                      1) press 1 add item
                      2) press 2 remove item
                  """;
    print(menu);
    print("Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      var status = true;
      while (status) {
        print("Enter name : ");
        itemName = stdin.readLineSync()!;
        shopping_list.add(itemName);

        print("Do you want to add more iteam? press y for Yes and press n for No : ");
        nextChoice = stdin.readLineSync()!;
        if (nextChoice == 'y') {
          status = true;
        } else {
          status = false;
        }
      }
    } else{
      var status = true;
      while (status) {
        print("Enter which value you want to remove : ");
        itemName = stdin.readLineSync()!;
        shopping_list.remove(itemName);

        print("Do you want to remove more iteam? press y for Yes and press n for No : ");
        nextChoice = stdin.readLineSync()!;
        if (nextChoice == 'y') {
          status = true;
        } else {
          status = false;
        }
      }
    }
    print("Do you want to perform more iteam? press y for Yes and press n for No : ");
      mainChoice = stdin.readLineSync()!;
      if (mainChoice == 'y') {
        mainStaus = true;
      } else {
        mainStaus = false;
      }
  }
  for (var iteam in shopping_list) {
    print(iteam);
  }
}