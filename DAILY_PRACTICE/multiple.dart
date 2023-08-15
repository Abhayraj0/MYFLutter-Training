<<<<<<< HEAD
<<<<<<< HEAD
/*
  multiple inhertance : multiple inheritance does not support in dart programing language
    in multiple inheritance there are two parent class and one child class


          A                    B
          |                    |
          ----------------------
                      |
                      V

                      C

  Hierachical Inheritance : 
        one class has more than 2 child

                    A
                    |
                    V
          ---------------------
          |                    |
          V                    V
          B                    C
        
*/

class Parent{
   void printName(){
      print("Inside class Parent");
   }
}

class Daughter extends Parent{
  var age = 22;
   void Age(){
      print("Her age is: $age");
   }
}

class Son extends Parent{
   void name(name){
      print("My name is: ${name}");
   }
}

void main(){
   var d = Daughter();
   d.printName();
   d.Age();

   var s = Son();
   s.printName();
   s.name("Abhayraj");
}
=======
/*
  multiple inhertance : multiple inheritance does not support in dart programing language
    in multiple inheritance there are two parent class and one child class


          A                    B
          |                    |
          ----------------------
                      |
                      V

                      C

  Hierachical Inheritance : 
        one class has more than 2 child

                    A
                    |
                    V
          ---------------------
          |                    |
          V                    V
          B                    C
        
*/

class Parent{
   void printName(){
      print("Inside class Parent");
   }
}

class Daughter extends Parent{
  var age = 22;
   void Age(){
      print("Her age is: $age");
   }
}

class Son extends Parent{
   void name(name){
      print("My name is: ${name}");
   }
}

void main(){
   var d = Daughter();
   d.printName();
   d.Age();

   var s = Son();
   s.printName();
   s.name("Abhayraj");
}
>>>>>>> 25f8dcb3b18163350107f5779209debfc2af8016
=======
/*
  multiple inhertance : multiple inheritance does not support in dart programing language
    in multiple inheritance there are two parent class and one child class


          A                    B
          |                    |
          ----------------------
                      |
                      V

                      C

  Hierachical Inheritance : 
        one class has more than 2 child

                    A
                    |
                    V
          ---------------------
          |                    |
          V                    V
          B                    C
        
*/

class Parent{
   void printName(){
      print("Inside class Parent");
   }
}

class Daughter extends Parent{
  var age = 22;
   void Age(){
      print("Her age is: $age");
   }
}

class Son extends Parent{
   void name(name){
      print("My name is: ${name}");
   }
}

void main(){
   var d = Daughter();
   d.printName();
   d.Age();

   var s = Son();
   s.printName();
   s.name("Abhayraj");
}
>>>>>>> 25f8dcb3b18163350107f5779209debfc2af8016
