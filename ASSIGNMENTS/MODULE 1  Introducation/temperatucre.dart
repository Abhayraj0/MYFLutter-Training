import 'dart:io';

void main()
{
  print("Enter Temperature in Degree Celsius : ");
  var celsius = double.parse(stdin.readLineSync()!);

  var fahrenheit = (celsius * 9/5) +32;

  print("Temperature in degrees Fahrenheit (°F) =  $fahrenheit");
}