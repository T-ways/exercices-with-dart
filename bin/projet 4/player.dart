//PLAYER...
import 'dart:math';

class Player {
  String playerName;
  int playerLife;
  int playerHealth;

  Player(this.playerName, this.playerLife, this.playerHealth);

    //  counterAttack() {
    //    Random dice = new Random();
    //    var coup = dice.nextInt(10) + 2;
    //    print("bot assomme $coup a ${this.playerName}");
    //    this.playerHealth = this.playerHealth - coup;
    //    print("----------------------------------");
    //    print("${this.playerName} a actuellement ${this.playerHealth} de sante");
   //     print("----------------------------------");
   //   }

  //afficher Player
  displayPlayer(){
   print("Afficher les proprietes du player ${this.playerName} ${this.playerLife} et ${this.playerHealth}");
  }
  //autres function attack BOT
  attack(int adv){
    Random dice = new Random();
    var coup = dice.nextInt(10) + 2;
      // print("${this.playerName} attack avec $coup le bot");
           // adv = (adv - coup);
      //  print("----------------------------------");
      //   print("BOT a actuellement ${adv} de sante");
      //   print("----------------------------------");
           adv = (adv - coup);

           return adv;
  }
}
