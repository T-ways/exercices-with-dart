import 'dart:math';
import 'bot.dart';
import 'player.dart';

void main(){

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
  //Fin lancer des dés
}