import 'Personagem.dart';
import 'Guerreiro.dart';
import 'Mago.dart';
void main() {

  var personagem = Personagem(
    nome: 'Luffy',
    raca: 'Deus',
    classe: 'Esfomeado',
    idade: 20,
    altura: 1.80,
    magico: false,
    vida: 100,
    energia: 100,
    habilidades: ['Sair na porrada', 'Comer', 'Dormir'],
  );

  personagem.exibirFicha();

  var guerreiro = Guerreiro(
    nome: 'Thor',
    raca: 'Roliço',
    idade: 80,
    altura: 1.10,
    vida: 130,
    energia: 100,
    habilidades: ['Velocidade', 'Rolamento lateral', 'Cabeçada'],
    arma: 'Mordida mortal',
    estiloDeCombate: 'Corpo a corpo',
  );

  guerreiro.exibirFicha();

  var mago = Mago(
    nome: 'Bernardo',
    raca: 'Siamês',
    idade: 10,
    altura: 1.50,
    vida: 150,
    energia: 100,
    habilidades: ['Choro matinal', 'Carência', 'Coitadolandia'],
  );

  mago.exibirFicha();
  mago.lancarFeitico();

  guerreiro.atacar(mago);
  mago.atacar(guerreiro);

}