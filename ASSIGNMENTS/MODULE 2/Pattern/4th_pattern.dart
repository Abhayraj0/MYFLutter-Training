import 'dart:io';

void main()
{
  for (var i = 1; i <=5; i++) {
    for (var j = 5; j>i; j--) {
      stdout.write(" ");
    }
    for (var a = 1; a <=i; a++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}