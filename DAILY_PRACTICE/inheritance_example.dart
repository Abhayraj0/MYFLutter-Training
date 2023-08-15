/*
  inhertance : one class derived properties of another class its called inheritance
    inheritance which is provide reusabilities
    using of inheritance we can reduce our code
    there are mainly 5 types of inhertance

    1) single level inheritance
    2) multi-level inheritance
    3) multiple inheritance
    4) hierachical inheritance
    5) hybrid inheritance

*/

class Person
{
  void display()
  {
    print("Hello my name is Abhayraj.....");
  }
}
class Student extends Person {
  void displayData()
  {
    print("Flutter....");
  }
}
void main()
{
  var obj = Student();
  obj.display();
  obj.displayData();
}