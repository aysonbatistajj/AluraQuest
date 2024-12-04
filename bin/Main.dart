import 'Models/Personagem.dart';
import 'Models/Guerreiro.dart';
import 'Models/Mago.dart';
import 'Enum/Feticos.dart';
import 'Exceptions/PersonagemDerrotadoException.dart';
void main() {

  var personagem = Personagem(
    nome: 'Cachorro Louco',
    raca: 'Pequeno',
    classe: 'Pobrinho',
    idade: 20,
    altura: 1.50,
    magico: false,
    energia: 100,
    habilidades: ['Lerdeza', 'Comer', 'Dormir'],
  );



  var guerreiro = Guerreiro(
    nome: 'Berenice',
    raca: 'Roliço',
    idade: 2,
    altura: 1.00,
    energia: 100,
    habilidades: ['Morder', 'Arranhar', 'Cabeçada'],
    arma: 'Mordida mortal',
    estiloDeCombate: 'Corpo a corpo',
  );

  

  var mago = Mago(
    nome: 'Banguela',
    raca: 'Pretinho',
    idade: 10,
    altura: 1.50,
    energia: 100,
    habilidades: ['Choro matinal', 'Carência', 'Coitadolandia'],
  );

 
  mago.vida = 0;

   try{
    mago.atacar(guerreiro);
  }on PersonagemDerrotadoException catch (e) {
    print(e.mensagem);
  }


}