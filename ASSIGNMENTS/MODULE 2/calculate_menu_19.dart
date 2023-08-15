
import 'dart:io';

void main()
{
  String menu = """
    **************************************
                      MENU
                  1. Triangle.
                  2. Rectangle.
                  3. Circle.
                  4. Exit.
    **************************************
""";
print(menu);
print("Enter your choice");
int? choice = int.parse(stdin.readLineSync()!);
  if (choice ==1) {
    calculateTriangleArea();
  } else if(choice ==2){
    calculateRectangle();
  } else if(choice ==3){
    calculateCricle();
  } else {
    print("Exiting your code..");
  }

}

void calculateTriangleArea()
{
  print("Enter the base length : ");
  var base = double.parse(stdin.readLineSync()!);
  print("Enter the heigth : ");
  var height = double.parse(stdin.readLineSync()!);
  var area = 0.5 * base * height;
  print("Your Triangle is : $area");

}

void calculateRectangle()
{
  print("Enter the length : ");
  var length = double.parse(stdin.readLineSync()!);
  print("Enter the width : ");
  var width = double.parse(stdin.readLineSync()!);
  var area = length * width;
  print("your rectangle area is : $area");
}

void calculateCricle()
{
  print("Enter the radius : ");
  var radius = double.parse(stdin.readLineSync()!);

  var area = radius * radius;
  print("Your cricle area is : $area");
}
