import 'dart:io';
import 'game.dart';

void main() {
  var game = Game();
  int result = 0;
  do {
    stdout.write("Please guess the number between 1 and 100 : ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print("Please enter number only");
      continue;
    }
     result = game.doGuess(guess);
  } while (result != 1);

  while(result == 1){
    stdout.write("Play again Yes or No? : ");
    var Str = stdin.readLineSync();
    if(Str == "Yes"){
      var again = main();
    }else if (Str == "No"){
      break;
    }else{
      print("Please enter Yes or No");
      continue;
    }
   break;
  }
}

