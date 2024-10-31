import 'Models/Personagem.dart';
import 'Models/Guerreiro.dart';
import 'Models/Mago.dart';
import 'Enum/Feticos.dart';

void main() {

  var personagem = Personagem(
    nome: 'Cachorro Louco',
    raca: 'Pequeno',
    classe: 'Pobrinho',
    idade: 20,
    altura: 1.50,
    magico: false,
    vida: 100,
    energia: 100,
    habilidades: ['Lerdeza', 'Comer', 'Dormir'],
  );

  personagem.exibirFicha();

  var guerreiro = Guerreiro(
    nome: 'Berenice',
    raca: 'Roliço',
    idade: 2,
    altura: 1.00,
    vida: 120,
    energia: 100,
    habilidades: ['Morder', 'Arranhar', 'Cabeçada'],
    arma: 'Mordida mortal',
    estiloDeCombate: 'Corpo a corpo',
  );

  guerreiro.exibirFicha();

  var mago = Mago(
    nome: 'Banguela',
    raca: 'Pretinho',
    idade: 10,
    altura: 1.50,
    vida: 150,
    energia: 100,
    habilidades: ['Choro matinal', 'Carência', 'Coitadolandia'],
  );

  mago.exibirFicha();
  mago.adicionarFeitico(Feiticos.fogo, 90);
  mago.adicionarFeitico(Feiticos.relampago, 80);
  mago.adicionarFeitico(Feiticos.cura, 80);
  mago.adicionarFeitico(Feiticos.gelo, 70);
  mago.lancarFeitico();

  guerreiro.atacar(mago);
  mago.atacar(guerreiro);
}