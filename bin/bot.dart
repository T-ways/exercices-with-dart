import 'dart:math';
import 'dart:io';

void main(){

  //extance Bot
 Bot Roboto = Bot(1,100);
 print(Roboto.health);

 print("Jouer donner votre speudo");
 String pseudo = stdin.readLineSync();
 var i =1;
 while(Roboto.health>0){
   Roboto.subirDomage(pseudo);
   print("fin du tour $i");
   i++;
 }print("fin du tour ");


}
 //PLAYER...
class Player{
  String playerName;
  int playerLife;
  int playerHealth;

  Player(this.playerName, this.playerLife , this.playerHealth);

 }

 //PLAYER

//class BOT
 class Bot{
  int powers;
 //la sante
 int health;

 //constructeur
 Bot(this.powers, this.health);

 subirDomage(String pseudo){
   print("$pseudo appuyer sur entrer");
   stdin.readLineSync();
    Random dice = new Random();
   //dé 1
   var dice1 = dice.nextInt(6)+1;
   //dé 2
   int dice2 = dice.nextInt(6)+1;
   //somme des deux dés
   print("on a $dice2  et $dice1");
   int points = (dice1 + dice2);

   this.health =(this.health-points);
   print("$pseudo inflige $points au bot");
   print("bot a ${this.health}");
 }

 }
