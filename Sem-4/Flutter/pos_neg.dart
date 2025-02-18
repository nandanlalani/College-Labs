import 'dart:io';
void main(){

  print('Enter a number');
  int a = int.parse(stdin.readLineSync()!);

  if(a == 0){
    print("Number is zero");
  }
  else if(a > 0){
    print("Number is pos");
  }
  else{
    print("NUmber is neg");
  }
}