import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print("===== Digite um comando ===");
    print("CADASTRAR, IMPRIMIR OU SAIR");
    String? input = stdin.readLineSync();
    if (input == 'cadastrar') {
      cadastrar();
    } else if (input == 'sair') {
      print('programa encerrado...');
      condicao = false;
    } else if (input == 'imprimir') {
      for (int i = 0; i < cadastros.length; i++) {
        print("Cadastro $i : ${cadastros[i]}");
      }
    } else {
      print('comando inválido');
      //print("\x1B[2J\x1B[0;0H");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("Digite seu nome: ");
  cadastro["nome"] = stdin.readLineSync();

  print("Digite sua idade: ");
  cadastro["idade"] = stdin.readLineSync();

  print("Digite sua cidade: ");
  cadastro["cidade"] = stdin.readLineSync();

  print("Digite seu estado: ");
  cadastro["estado"] = stdin.readLineSync();

  cadastros.add(cadastro);
}
