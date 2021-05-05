
import 'dart:math';
import 'dart:io';

void main(){

  //extance Bot
  Bot Roboto = Bot(1,100);
  print(Roboto.health);
  //extance Bot

  //ASk player name
  print("Jouer donner votre speudo");
  String pseudo = stdin.readLineSync();

  //extence of player
    Player Mario = Player(pseudo, 1, 100);
  //exteance of player

  //user attack numbers
  var i =1;
  //user attack numbers

  while(Roboto.health>0 || Mario.playerHealth > 0){
    Roboto.subirDomage(pseudo);
    Mario.counterAttack();
    print("nous somme au tour $i");
    i++;
    if(Roboto.health <=0){
      print("${Mario.playerName} a Gagner !!!");
    }else if(Mario.playerHealth <=0){
      print(" le bot a gagné ${Mario.playerName} !!!");
    }else{
     // print("combat en cours !!!");
    }
  }print("fin du tour ");


}
//class BOT
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

}

//PLAYER...
class Player{
  String playerName;
  int playerLife;
  int playerHealth;

  Player(this.playerName, this.playerLife , this.playerHealth);

  counterAttack(){
    Random dice = new Random();
    var coup = dice.nextInt(10)+2;
    print("bot assomme $coup a ${this.playerName}");
    this.playerHealth =this.playerHealth - coup;
    print("----------------------------------");
    print("${this.playerName} a actuellement ${this.playerHealth} de sante");
    print("----------------------------------");

  }

}

