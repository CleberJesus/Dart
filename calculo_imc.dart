import 'dart:io';

main() {
//Calcular o imc = peso / altura²
//solicitar o peso;
//solicitar a altura;
//calcular o imc;
//se maior que 40,0
  //obesidade grave
//se maior que 30,0
  //obesidade
//entre 25,0 e 29,9
  //sobrepeso
//entre 18,5 e 24,9
  //normal

  print("==Digite seu peso: ==");
  String? input = stdin.readLineSync();
  double peso = double.parse(input!);

  print("==Digite sua altura: ==");
  String? input2 = stdin.readLineSync();
  double altura = double.parse(input2!);

  var imc = peso / (altura * altura);

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
