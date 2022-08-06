import 'dart:io';
import 'game.dart';

void main() {
  var game = Game();
  int result = 0;
  var isCorrect = false;
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');
  do {
    stdout.write("║ Please guess the number between 1 and 100 : ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print("║ Please enter number only");
      continue;
    }
    var result = game.doGuess(guess);
    var guessCount = game.count;

    if (result == 0) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 1) {
      print('║ ➜ $guess is CORRECT ❤️, total guesses: $guessCount');
      print('╟────────────────────────────────────────');
      isCorrect = true;
    }

    while (result == 1) {
      stdout.write("║ Play again Yes or No? : ");
      var Str = stdin.readLineSync();
      if (Str == "Yes") {
        print("╟────────────────────────────────────────");
        var again = main();
      } else if (Str == "No") {
        print("╟────────────────────────────────────────");
        print('║                 THE END                ');
        print('╚════════════════════════════════════════');
      } else {
        print("║ Please enter Yes or No");
        print('╟────────────────────────────────────────');
        continue;
      }
      break;
    }
  } while (!isCorrect);
}
