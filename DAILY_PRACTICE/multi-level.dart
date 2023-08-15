import 'dart:io';

class A{
  int? num1;
  void intputA()
  {
    print("Enter number 1 : ");
    num1 = int.parse(stdin.readLineSync()!);
  }
  void display()
  {
    print("Your number : $num1");

  }
}
class B extends A {
  int? num2;
  void intputB()
  {
    print("Enter number 2 : ");
    num2 = int.parse(stdin.readLineSync()!);
  }
  void displayData(){
    print("Your number is : $num2");
  }
}
class C extends B {
  var sum;
  void Addition ()
  {
    sum = num1 ;
    print("Number : $sum");
  }
}

void main()
{
  var obj = C();
  obj.intputA();
  obj.intputB();
  obj.display();
  obj.displayData();
  obj.Addition();
}