<<<<<<< HEAD
<<<<<<< HEAD
import 'dart:io';

void main()
{
  bool mainStatus = true;
  
  var prodcut = new Map();
  var price;
  var qty;
  print('Enter the number : ');
  var num = int.parse(stdin.readLineSync()!);

  while (mainStatus) {
    String menu = """ 
      ********************************************
                        Menu
                  1) prodcut list
                  2) custmor
      ********************************************
    """;
    print(menu);
    
    print('Enter your choice : ');
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
      bool status = true;
        while(status)
        {
          
          for (var i = 1; i < num; i++) {
            var specific = new Map();
            print('Enter product name : ');
            var name = stdin.readLineSync();
            print('Enter prodcut price : ');
            price = int.parse(stdin.readLineSync()!);
            print('Enter prodcut no. of qty : ');
            qty = int.parse(stdin.readLineSync()!);
            
            specific["price"] = price;
            specific["qty"] = qty;
            prodcut[name] = specific;
        
          }  
         
            print("Do you want to add press y for yes and press n for no : ");
            var mainCho = stdin.readLineSync()!;
            if (mainCho == 'y' || mainCho == 'Y') {
                status = true;
              } else {
                status = false;
              }
        }
        print(prodcut);

        break;
      case 2:
       bool status = true;
        while(status)
        {
          print("Our product is : $prodcut");
        print("Choice your prduct name : ");
        var choiceProduct = stdin.readLineSync()!;
        print('Enter your product qty : ');
        var qty1 = int.parse(stdin.readLineSync()!);
        if (qty >= qty1) {
           var total = price * qty1;
          print("Your product name is: $choiceProduct \n Your totale bill is : $total");
        } else {
          print("Error message....");
        }

       
        print("Do you want to more purchess product press y for yes and press n for no : ");
        var mainCho = stdin.readLineSync()!;
        if (mainCho == 'y' || mainCho == 'Y') {
            status = true;
          } else {
            status = false;
          }
        }

        break;
      default:
    }

    print("Do you want to continue press y for yes and press n for no : ");
    var mainChoice = stdin.readLineSync()!;
    if (mainChoice == 'y' || mainChoice == 'Y') {
      mainStatus = true;
    } else {
      mainStatus = false;
    }
  }
=======
import 'dart:io';

void main()
{
  bool mainStatus = true;
  
  var prodcut = new Map();
  var price;
  var qty;
  print('Enter the number : ');
  var num = int.parse(stdin.readLineSync()!);

  while (mainStatus) {
    String menu = """ 
      ********************************************
                        Menu
                  1) prodcut list
                  2) custmor
      ********************************************
    """;
    print(menu);
    
    print('Enter your choice : ');
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
      bool status = true;
        while(status)
        {
          
          for (var i = 1; i < num; i++) {
            var specific = new Map();
            print('Enter product name : ');
            var name = stdin.readLineSync();
            print('Enter prodcut price : ');
            price = int.parse(stdin.readLineSync()!);
            print('Enter prodcut no. of qty : ');
            qty = int.parse(stdin.readLineSync()!);
            
            specific["price"] = price;
            specific["qty"] = qty;
            prodcut[name] = specific;
        
          }  
         
            print("Do you want to add press y for yes and press n for no : ");
            var mainCho = stdin.readLineSync()!;
            if (mainCho == 'y' || mainCho == 'Y') {
                status = true;
              } else {
                status = false;
              }
        }
        print(prodcut);

        break;
      case 2:
       bool status = true;
        while(status)
        {
          print("Our product is : $prodcut");
        print("Choice your prduct name : ");
        var choiceProduct = stdin.readLineSync()!;
        print('Enter your product qty : ');
        var qty1 = int.parse(stdin.readLineSync()!);
        if (qty >= qty1) {
           var total = price * qty1;
          print("Your product name is: $choiceProduct \n Your totale bill is : $total");
        } else {
          print("Error message....");
        }

       
        print("Do you want to more purchess product press y for yes and press n for no : ");
        var mainCho = stdin.readLineSync()!;
        if (mainCho == 'y' || mainCho == 'Y') {
            status = true;
          } else {
            status = false;
          }
        }

        break;
      default:
    }

    print("Do you want to continue press y for yes and press n for no : ");
    var mainChoice = stdin.readLineSync()!;
    if (mainChoice == 'y' || mainChoice == 'Y') {
      mainStatus = true;
    } else {
      mainStatus = false;
    }
  }
>>>>>>> 25f8dcb3b18163350107f5779209debfc2af8016
=======
import 'dart:io';

void main()
{
  bool mainStatus = true;
  
  var prodcut = new Map();
  var price;
  var qty;
  print('Enter the number : ');
  var num = int.parse(stdin.readLineSync()!);

  while (mainStatus) {
    String menu = """ 
      ********************************************
                        Menu
                  1) prodcut list
                  2) custmor
      ********************************************
    """;
    print(menu);
    
    print('Enter your choice : ');
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
      bool status = true;
        while(status)
        {
          
          for (var i = 1; i < num; i++) {
            var specific = new Map();
            print('Enter product name : ');
            var name = stdin.readLineSync();
            print('Enter prodcut price : ');
            price = int.parse(stdin.readLineSync()!);
            print('Enter prodcut no. of qty : ');
            qty = int.parse(stdin.readLineSync()!);
            
            specific["price"] = price;
            specific["qty"] = qty;
            prodcut[name] = specific;
        
          }  
         
            print("Do you want to add press y for yes and press n for no : ");
            var mainCho = stdin.readLineSync()!;
            if (mainCho == 'y' || mainCho == 'Y') {
                status = true;
              } else {
                status = false;
              }
        }
        print(prodcut);

        break;
      case 2:
       bool status = true;
        while(status)
        {
          print("Our product is : $prodcut");
        print("Choice your prduct name : ");
        var choiceProduct = stdin.readLineSync()!;
        print('Enter your product qty : ');
        var qty1 = int.parse(stdin.readLineSync()!);
        if (qty >= qty1) {
           var total = price * qty1;
          print("Your product name is: $choiceProduct \n Your totale bill is : $total");
        } else {
          print("Error message....");
        }

       
        print("Do you want to more purchess product press y for yes and press n for no : ");
        var mainCho = stdin.readLineSync()!;
        if (mainCho == 'y' || mainCho == 'Y') {
            status = true;
          } else {
            status = false;
          }
        }

        break;
      default:
    }

    print("Do you want to continue press y for yes and press n for no : ");
    var mainChoice = stdin.readLineSync()!;
    if (mainChoice == 'y' || mainChoice == 'Y') {
      mainStatus = true;
    } else {
      mainStatus = false;
    }
  }
>>>>>>> 25f8dcb3b18163350107f5779209debfc2af8016
}