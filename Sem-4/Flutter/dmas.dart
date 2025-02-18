import 'dart:io';
void main(){
  print("Enter your choise \n1.Div\n2.Mul\n3.Add\n4.Sub");
  int choise = int.parse(stdin.readLineSync()!);
  print("Enter two number");
  int n1 = int.parse(stdin.readLineSync()!);
  int n2 = int.parse(stdin.readLineSync()!);
  if(choise == 1){
    print("Div: ${n1/n2}");
  }
  else if(choise == 2){
    print("Mul: ${n1*n2}");
  }
  else if(choise == 3){
    print("Add: ${n1+n2}");
  }
  else if(choise == 4){
    print("Sub: ${n1-n2}");
  }
  else{
    print("Invalid choise");
  }
}