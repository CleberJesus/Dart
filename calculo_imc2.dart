import 'dart:io';


//função principal
main() {
  calculoImc();
}


//função para obter dados e mostrar resultado
calculoImc() {
  print("==Digite seu peso: ==");
  String? input = stdin.readLineSync();
  double peso = double.parse(input!);

  print("==Digite sua altura: ==");
  String? input2 = stdin.readLineSync();
  double altura = double.parse(input2!);

  double imc = calcImc(peso, altura);
  imprimeImc(imc);
  
}


//função calcula o imc
calcImc(double peso, double altura) {
  return peso / (altura * altura);
}


//função imprime o imc
imprimeImc(double imc) {
  if (imc >= 40.0) {
    print("seu imc é $imc");
    print("obesidade grave!");
  } else if (imc >= 30.0 && imc <= 39.9) {
    print("seu imc é $imc");
    print("obesidade!");
  } else if (imc >= 25.0 && imc <= 29.9) {
    print("seu imc é $imc");
    print("sobrepeso!");
  } else {
    print("seu imc é $imc");
    print("normal!");
  }
}
