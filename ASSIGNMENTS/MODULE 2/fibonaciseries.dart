import 'dart:io';

void main()
{
  print('Enter the number : ');
  var num = int.parse(stdin.readLineSync()!);
  int fibo = printFibonaciSeries(num);
  print("Your fibonaciseries is : $fibo"); 
}

int printFibonaciSeries(int n)
{
  var Fristnmber = 0, Secondnumber = 1;
  if (n >= 1) {
    print(Fristnmber);
  } 
  if (n >= 2) {
    print(Secondnumber);
  }

  for (var i = 3; i <= n; i++) {
    var next = Fristnmber + Secondnumber;
    print(next);
    Fristnmber = Secondnumber;
    Secondnumber = next;
  }
  return n;
}