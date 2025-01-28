import 'dart:io';
void main(){
  print("Enter a String");
  String str = stdin.readLineSync()!;

  List strlist = [];
  strlist.addAll(str.split(" "));
  print("the length of last word is ${strlist.last.length}");
}