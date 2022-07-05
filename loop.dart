import 'dart:io';

main() {
  //   (variável, condição, acréscimo)
  //for (int x = 0; x < 10; x++) {
  //  print(x);
  //}
  bool condicao = true;
  //int x = 1;

  while (condicao == true) {
    print("digite um texto: ");
    var nome = stdin.readLineSync();
    if (nome == 'sair') {
      condicao = false;
      print("fim do programa...");
    } else {
      print(nome);
    }
  }
}
