import 'dart:io';

void main ()
{
  print("Enter the number : ");
  var num = int.parse(stdin.readLineSync()!);
  int facto = factorialNumber(num);
  print("Your factorial number is : $facto");
}

int factorialNumber(var n)
{
  if (n == 0 || n == 1) {
    return n;
  } else {
    return n * factorialNumber(n - 1);
  }
}