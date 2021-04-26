import 'dart:io';
void main(List<String> arguments) {
  print('Hello , Donner un nombre !');
  var nombre = stdin.readLineSync();
  var nbr = int.parse(nombre);
  print(nbr);
  print(nombre);
  try {

    print("Le resultat de la table par $nbr est:");
    for(var i=0;i<=10;i++){
      print(" ${i} X ${nbr} = ${i*nbr}");
    }
  } on FormatException {
    //affiche l'exception
    print("L' exception declencher par des caracteres");
  }


}
