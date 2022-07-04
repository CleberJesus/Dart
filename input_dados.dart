import 'dart:io';

main() {
  //perguntar a idade da pessoa;
  //se a idade for maior ou igual a 18;
  // ele é maior de idade
  //se for menor;
  // ele é menor de idade
  print("=====Digite uma idade: ======");
  String? input = stdin.readLineSync();
  int idade = int.parse(input!);

  if (idade >= 60) {
    print("idoso!");
  } 
  else if(idade >= 18) {
    print("adulto!");
  }
  else if(idade >= 12){
    print("adolescente!");
  }else{
    print("criança!");
  }
}
