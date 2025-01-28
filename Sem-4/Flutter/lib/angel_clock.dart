import 'dart:io';
void main(){
  print("Enter hour hand");
  double h = double.parse(stdin.readLineSync()!);
  print("Enter minute hand");
  double m = double.parse(stdin.readLineSync()!);

  double angel = (30*h)-(11/2)*m;

  print("The angel: ${angel}");
}