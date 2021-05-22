import 'dart:math';
import 'bot.dart';
import 'player.dart';

void main(){
Player Gamer = Player('KOKEOK', 1, 100);
Bot Botos = Bot(1,100);

  //Afficher le BOT

 Botos.displayBot();
  //!-Afficher Le BOT

  //Afficher Le player
Gamer.displayPlayer();

  //!-Afficher Le player

//attack du player vers le bot
 print(Gamer.attack(Botos.health)) ;

//attack du Bot vers player
  print(Botos.attack(Gamer.playerName, Gamer.playerHealth));

print("OK");



  //lancer des dés
  throwDices(){
    Random dice = new Random();
    var dice1 = dice.nextInt(6)+1;
    // print(dice1);
    //dé 2
    var dice2 = dice.nextInt(6)+1;
    //print("$dice2");
    //somme des deux dés
    int points = (dice1 + dice2);

    return points;

  }
  //attack du Bot vers player
  print(Botos.attack(Gamer.playerName, (Gamer.playerHealth - throwDices())));

//attack du Bot vers player
  print(Botos.attack(Gamer.playerName, Gamer.playerHealth));

  //Fin lancer des dés
  print(throwDices());
}