import 'dart:io';

void main()
{
  print("Enter the number : ");
  var num = int.parse(stdin.readLineSync()!);
  int sum = clculateSumation(num);
  print('your summation is : $sum');
}
int clculateSumation(int n)
{
  var sum = 0;
  while (n != 0) {
    int digit= n % 10;
    sum += digit;
    n ~/= 10;
  }
  return sum;
}