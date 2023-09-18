import 'dart:math';
import 'dart:io';
enum Dice { one, two, three, four, five, six }

void main() {
  Random random = Random();


  var dice = Dice.values[random.nextInt(7)];

  

  switch (dice) {
    case Dice.one:
      print('1');
      break;
    case Dice.two:
      print('2');
      break;
    case Dice.three:
      print('3');
      break;
    case Dice.four:
      print('4');
      break;

    case Dice.five:
      print('5');
      break;

    case Dice.six:
      print('6');
      break;
  }
}
