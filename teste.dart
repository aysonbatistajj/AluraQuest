import 'dart:math';

void main(List<String>arguments){
  var random = Random();

  String nome = "ayzzin";
  String raca = "Humano";
  String classe = "Jiujiteiro";
  int idade = 26;
  double altura = 1.80;
  bool magico = false;
  int pontosDeVida = 200;
  int pontosDeEnergia = 200;

  List<String> habilidades = ["Judô", "Passagem de Guarda", "Raspagem"];

  print("Nome: $nome");
  print("Raça: $raca");
  print("Classe: $classe");
  print("Idade: $idade");
  print("Altura: $altura");
  print("É Magico: ${magico ? "Sim":"Não"} ");
  print("Pontos de Vida: $pontosDeVida");
  print("Pontos de Energia: $pontosDeEnergia");
  print("Habilidades: $habilidades");

  print("\nO PERSONAGEM INICIOU UMA BATALHA!!!\n");
  while (pontosDeEnergia > 0) {
    int valorAleatorio = random.nextInt(2);
    print("O persongem está batalhando!");
    print("O personagem utilizou: ${habilidades[valorAleatorio]}");
    pontosDeEnergia -= 20;
    print("Energia Restante: $pontosDeEnergia\n");
  }
  if (pontosDeEnergia == 0) { print("A energia do personagem se esgotou! ELE FOI DE ARRASTA!!!");}
}