main() {
  var nome = [];

  nome = ['cleber', 'bianchi', 'jesus'];

  print(nome);

  print(nome.length);
  nome.add('cavalcante');
  print(nome);
  print(nome.length);

  print(nome[0]);

  nome.remove("jesus");
  print(nome);
  nome.add('jesus');
  print(nome);
}
