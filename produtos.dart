import 'dart:io';

List<String> produtos = [];

main() {
  bool condicao = true;

  while (condicao == true) {
    print('-----Adicione um produto ou digite imprimir ou sair----');

    String? text = stdin.readLineSync();

    if (text == 'sair') {
      print('-----FIM DE PROGRAMA-----');
      condicao = false;
    } else if (text == 'imprimir') {
      imprimir();
    } else if (text == 'remover') {
      remover();
    } else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
}

remover() {
  print("escolha um item para remover: ");
  imprimir();
  // ignore: unused_local_variable
  var readLineSync = stdin.readLineSync();
  // ignore: unused_local_variable
  int item = int.parse(readLineSync!);
  produtos.removeAt(item);
}
