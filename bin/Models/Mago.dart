import 'dart:math';
import '../Exceptions/PersonagemDerrotadoException.dart';
import 'Personagem.dart';
import '../Interface/Combate.dart';
import '../Enum/Feticos.dart';

class Mago extends Personagem implements Combate{

  Map<Feiticos, int> feiticos;

  Mago({
    required String nome,
    required String raca,
    required int idade,
    required double altura,
    required int energia,
    required List<String> habilidades,
  }) : feiticos = {}, super(
    nome: nome,
    raca: raca,
    classe: 'Mago',
    idade: idade,
    altura: altura,
    magico: true, // Magos possuem habilidades mágicas
  
    energia: energia,
    habilidades: habilidades,
  );

  void adicionarFeitico(Feiticos feitico, int poder) {
      feiticos[feitico] = poder;
  }

  // Método para exibir os feitiços e seus poderes
  void exibirFeiticos() {
    feiticos.forEach((feitico, poder) {
      print('Feitiço: ${feitico.name}, Poder: $poder');
    });
  }

  // Método para lançar um feitiço aleatório
  void lancarFeitico() {
    if (feiticos.isEmpty) {
      print("Nenhum feitiço disponível para lançar!");
      return;
    }

    // Seleciona um feitiço aleatório
    List<Feiticos> chaves = feiticos.keys.toList();
    Feiticos feiticoAleatorio = chaves[Random().nextInt(chaves.length)];
    int poder = feiticos[feiticoAleatorio]!;

    // Exibe o feitiço lançado
    print("Lançando feitiço: ${feiticoAleatorio.name} com poder de $poder!");
  }

  @override
  void exibirFicha() {
    super.exibirFicha(); // Reutiliza o método da classe base
  }

  @override
  void atacar(Personagem alvo) {
    if(vida < 1){
      throw PersonagemDerrotadoException();
    }
    print('$nome lança um feitiço em ${alvo.nome}!');
    alvo.vida -= 15;
    print('${alvo.nome} agora tem ${alvo.vida} de vida.');
  }
}