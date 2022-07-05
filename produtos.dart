import 'dart:io';

main() {
  List<String> produtos = [];

  bool condicao = true;

  while (condicao == true) {
    print('-----Adicione um produto ou digite imprimir ou sair----');

    String? text = stdin.readLineSync();

    if (text == 'sair') {
      print('-----FIM DE PROGRAMA-----');
      condicao = false;
    } else if (text == 'imprimir') {
      print(produtos);
    } else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}
