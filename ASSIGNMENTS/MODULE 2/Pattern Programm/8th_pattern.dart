import 'dart:io';

void main()
{
  print("Enter the number : ");
  var n = int.parse(stdin.readLineSync()!);
  var j;
  for (var i = 0; i <= n; i++) {
    for (j = 0; j <=n-i; j++) {
      stdout.write(" ");
    }
    for (var a = 0; a <=i-1; a++) {
      stdout.write("$i ");
    }
    stdout.write("\n");
  }
}