import 'dart:io';
import 'dart:core';

void main(){
  print ("welcome to prediction");
  print("give us hours !");
  //get input hours on keys
  var hours = int.parse(stdin.readLineSync());
  //Get input minutes on keys
  print("give us munites !");

  //get system date H M S
  DateTime now = new DateTime.now();
  DateTime dateHM = new DateTime(now.hour, now.minute);
  print(dateHM);
  //get H M


  var minutes = int.parse(stdin.readLineSync());
   if(minutes >=60){
     var hrs =(minutes ~/ 60);
     var min = (minutes % 60);
     print(hrs);
     print(min);
     minutes = min;
     hours = hours + hrs;
     print('l heure est: $hours Heures $minutes Minutes');
   }else{
     print(hours);
     print(minutes);
   }
}