import 'dart:math';

class Game {
  int answer = 0; //instance field
  var count = 0;
  Game() {
    var r = Random();
    answer = r.nextInt(100) + 1;
    print("answer is $answer"); //ดูคำตอบ
  }

  int doGuess(int num) {
    count++;
    if (num > answer) {
      // print("║ ➜ $num is too high ▲ ");
      //  print('╟────────────────────────────────────────');
      return 0;
    } else if (num < answer) {
      // print("║ ➜ $num is too low ▼ ");
      // print('╟────────────────────────────────────────');
      return -1;
    } else {
      // print("║ ➜ $num is correct  ❤ ,total guesses: $guessCount️");
      //  print('╟────────────────────────────────────────');
      return 1;
    }
  }
}
