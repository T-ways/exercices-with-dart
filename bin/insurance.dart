import 'dart:io';
import 'dart:math';
void main(){
  print('bonjour!');
  //say welcomme to the application
  print("bienvenue dans notre application d assurrance");
  //ask ages
  print("quel age a le conducteur  ?");
  //input ages
  String age = stdin.readLineSync();
  print ("conducteur à $age");
  //ask the experience with driver licence
  print("experience ou age du  PERMIS ?");
  int exp = int.parse(stdin.readLineSync());

  //ask number of collisions
  print(" Combien d'accidents effectué ?");
  int collisions = int.parse(stdin.readLineSync());

  //converts age in interger
  int ages = int.parse(age);
  print("Combien d année avez vous avec notre compagnie ?");
  //ask experience with insurance agence
  int year =int.parse(stdin.readLineSync());

  var duration = (year > 1);

  if(ages < 25 && exp < 2 && collisions > 0){
    print("CONTRAT REFFUSE !!!");
  }else if (ages < 25 && exp <2 && collisions == 0){
    //state about year
    switch(duration){
      case(true):{print("TARIF EST: ORANGE");};
      break;
      default:{print("TARIF EST: ROUGE ");};
      break;
    }
    //end switch state

  }else if((ages<25 && exp > 2 && collisions == 0)||(ages > 25 && exp < 2 && collisions == 0)){
    //state about year
    switch(duration){
      case(true):{print("TARIF EST: VERT");};
      break;
      default:{print("TARIF EST: ORANGE ");};
      break;
    }
    //end switch state
  }else if ((ages<25 && exp>2 && collisions == 1)||(ages > 25 && exp<2 && collisions==1) ){

    //state about year
    switch(duration){
      case(true):{print("TARIF EST: ORANGE");};
      break;
      default:{print("TARIF EST: ROUGE ");};
      break;
    }
    //end switch state
  }else if ((ages<25 && exp>2 && collisions >1)||(ages > 25 && exp>2 && collisions>1) ){
    print("CONTRAT REFFUSE !!!");
  }else if (ages>25 && exp>2 && collisions ==0){
    print("TARIF EST: VERT !!!");
  }else if (ages>25 && exp>2 && collisions ==1){

    //state about year
    switch(duration){
      case(true):{print("TARIF EST: VERT");};
      break;
      default:{print("TARIF EST: ORANGE ");};
      break;
    }
    //end switch state
  }else if (ages>25 && exp>2 && collisions ==2){

    //state about year
    switch(duration){
      case(true):{print("TARIF EST: ORANGE");};
      break;
      default:{print("TARIF EST: ROUGE ");};
      break;
    }
    //end switch state
  }else if (ages>25 && exp>2 && collisions >2){
    print("CONTRAT REFFUSE !!!");
  }else {
    print("Souscriver a une assurance dans toutes les conditions !!!");
  }

}