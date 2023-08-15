import 'dart:io';

void main() {
  var Student_List = new Map();
  bool mainStatus = true;
  bool status = true;
  while (mainStatus) {
    String menu = """
        **********************************
                      Menu
                  1) Add details
                  2) Show details
        **********************************
                """;
    print(menu);
    print("Enter your choices : ");
    var choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        while (status) {
          for (int i = 1; i <= 2; i++) {
            var specific = new Map();
            print("********************************");
            print("Enter student NAME : ");
            String? name = stdin.readLineSync()!;
            print("Enter student SUBJECT : ");
            String? sub = stdin.readLineSync()!;
            print("Enter stdent AGE : ");
            int? age = int.parse(stdin.readLineSync()!);

            specific["Subject"] = sub;
            specific["Age"] = age;
            Student_List[name] = specific;
          }
          print("DO you want to add press y for yes and press n for no : ");
          var mainCho = stdin.readLineSync()!;
          if (mainCho == 'y' || mainCho == 'Y') {
            status = true;
          } else {
            status = false;
          }
        }

        // ignore: dead_code
        break;
      case 2:
        print(Student_List);
        break;
      default:
    }
    print("DO you want to continue press y for yes and press n for no : ");
    var mainChoice = stdin.readLineSync()!;
    if (mainChoice == 'y' || mainChoice == 'Y') {
      mainStatus = true;
    } else {
      mainStatus = false;
    }
  }
}
