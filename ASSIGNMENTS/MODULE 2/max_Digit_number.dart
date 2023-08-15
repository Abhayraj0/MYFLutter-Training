import 'dart:io';

void main()
{
  print("Enter the number : ");
  var num = int.parse(stdin.readLineSync()!);
  var maxDigit = findMaxDigit(num);
  print("Your max digit number is : $maxDigit");

}

int findMaxDigit(int n)
{
  var max = 0;
  bool isNagativ = false;
  if (n < 0) {
    isNagativ = true;
    n = -n;
  }
  while (n > 0) {
    int digit = n % 10;
    if (digit > max) {
      max = digit;
    }
    n ~/= 10;
  }
  return isNagativ ? -max : max;
}