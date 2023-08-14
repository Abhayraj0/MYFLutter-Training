import 'dart:io';

void main()
{
  print("Enter the number : ");
  var n = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= n-i; j++) {
      stdout.write(" ");
    }
    for (var a = 0; a <=i-1 ; a++) {
      if (n < 10) {
        stdout.write('$i ');
      } else {
        print('YOur number is high? you write 9 digit number..');
      }
    }
    stdout.write("\n");
  }
}