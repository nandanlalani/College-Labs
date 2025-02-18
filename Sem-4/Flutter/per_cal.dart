import 'dart:io';
void main(){
  print("Enter marks of five subject out of 100");
  double mark1 = double.parse(stdin.readLineSync()!);
  double mark2 = double.parse(stdin.readLineSync()!);
  double mark3 = double.parse(stdin.readLineSync()!);
  double mark4 = double.parse(stdin.readLineSync()!);
  double mark5 = double.parse(stdin.readLineSync()!);

  double per = (mark1+mark2+mark3+mark4+mark5)/5;
  print("Your percentage is: $per");
  if(per<=100 && per>70){
    print("Distinction");
  }
  else if(per>60){
    print("First class");
  }
  else if(per>45){
    print("Second Class");
  }
  else if(per>35){
    print("Pass class");
  }
  else{
    print("Fail");
  }
}