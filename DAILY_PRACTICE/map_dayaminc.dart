import 'dart:io';
void main()
{
  bool status = true;
  var product_list = new Map();
  while (status) {
    var specific = new Map();
    print("Enter product name : ");
    var name = stdin.readLineSync();
    print('Enter product price : ');
    var price = int.parse(stdin.readLineSync()!);
    print("Enter product no. of qty : ");
    var qty = int.parse(stdin.readLineSync()!);

    specific["price"] = price;
    specific["qty"] = qty;
    product_list[name] = specific;
    print(product_list);

    print("Do you want to continue press y for yes and press n for no : ");
    var choice = stdin.readLineSync();
    if (choice == 'y' || choice == 'Y') {
      status = true;
    } else {
      status = false;
    }
  }

  // for (var iteam in product_list) {
  //   print(iteam);
  // }
}