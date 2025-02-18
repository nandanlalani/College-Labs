import 'dart:io';
void main() {
  print('enter three numbers: ');
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  print("Largest Number  : ");
  (a>b)?((a>c)?print(a):print(c)):((b>c)?print(b):print(c));
}