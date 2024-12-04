import '../Enum/StatusDeVida.dart';

class Personagem {

  String nome;
  String raca;
  String classe;
  int idade;
  double altura;
  bool magico;
  int _vida = 100;
  StatusDeVida _statusDeVida = StatusDeVida.vivo;
  int energia;
  List<String> habilidades;


  Personagem({
    required this.nome,
    required this.raca,
    required this.classe,
    required this.idade,
    required this.altura,
    required this.magico,
    required this.energia,
    required this.habilidades,
  });


  int get vida => _vida;

   set vida(int valor){
     try {
      if (valor < 0) {
        throw ArgumentError("O valor de pontos de vida precisa ser positivo");
      }
      _vida = valor;
      atualizaStatusDeVida();
    } on ArgumentError catch (e) {
      print(e.message);
    }
  }

  void exibirFicha() {
    print('Ficha do Personagem:');
    print('Nome: $nome');
    print('Raça: $raca');
    print('Classe: $classe');
    print('Idade: $idade anos');
    print('Altura: ${altura.toStringAsFixed(2)} metros');
    print('Mágico: ${magico ? "Sim" : "Não"}');
    exibeStatusDeVida();
    print('Energia: $energia');
    print('Habilidades:');
    for (var habilidade in habilidades) {
      print('- $habilidade');
    }
  }

  void exibeStatusDeVida() {
    switch (_statusDeVida) {
      case StatusDeVida.vivo:
        print('Status de Vida: Vivo');
        break;
      case StatusDeVida.ferido:
        print('Status de Vida: Ferido');
        break;
      case StatusDeVida.derrotado:
        print('Status de Vida: Derrotado');
        break;
    }
  }

  void atualizaStatusDeVida() {
    if (_vida > 50) {
      _statusDeVida = StatusDeVida.vivo;
    } else if (_vida <= 50 && _vida >= 1) {
      _statusDeVida = StatusDeVida.ferido;
    } else if (_vida <= 0) {
      _statusDeVida = StatusDeVida.derrotado;
    }
  }
}