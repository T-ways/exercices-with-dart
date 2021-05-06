//class BOT
import 'dart:io';
import 'dart:math';

class Bot{
  int powers;
  //la sante
  int health;

  //Bot constructor
  Bot(this.powers, this.health);

  subirDomage(String pseudo){
    print("$pseudo appuyer sur entrer");
    stdin.readLineSync();
    Random dice = new Random();
    //dé 1
    var dice1 = dice.nextInt(6)+1;
    // print(dice1);
    //dé 2
    var dice2 = dice.nextInt(6)+1;
    //print("$dice2");
    //somme des deux dés
    int points = (dice1 + dice2);


    this.health =(this.health-points);
    print("----------------------------------");
    print("$pseudo inflige $points au bot");
    print("bot a ${this.health} Santé");
    print("----------------------------------");
  }

  //afficher BOT
  displayBot(){
    print("Affiche Bot vie:${this.health} ; santé:${this.powers} ; Nom:BOT;");
  }
}