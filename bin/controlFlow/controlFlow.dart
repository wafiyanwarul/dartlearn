import 'dart:io';

void main() {

  //this part is to try use method in "switchAndCase" class --------------------
  switchAndCase swac = new switchAndCase();
  swac.testSwitchCase();

  //this part is to try use method in "breakAndCont" class --------------------
  // breakAndCont bNc = new breakAndCont();
  // bNc.testPrimeNumber();
  //
  // print('');
  // bNc.continueTest();

  //this part is to try use method in "forLoopTest" class --------------------
  // forLoopTest loop = forLoopTest();
  // loop.testLoop();
  //
  // print(''); //make a space
  // loop.whileTest();
  //
  // print('\n'); //make a space
  // loop.doWhileTest();
  //
  // print('\n'); //make a space
  // loop.testPattern();

  //this part is to try use method in "ifElseCondition" class --------------------
  // ifElseCondition ife = new ifElseCondition();
  // ife.simpleIf();
  // ife.tryElse();
  //
  // var test = ifElseCondition();
  // var score = 100;
  // print('\nYour score: ${test.calculateScore(score)}');
  // ife.conditionalExpression();
  //
  // print(ife.testBuy());
}

class switchAndCase {
  void testSwitchCase() {
    final firstNumber = 21;
    final secondNumber = 5;
    final operator = "~/";

    switch (operator) {
      case '+':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
        break;
      case '-':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
        break;
      case '*':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
        break;
      case '/':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
        break;
      case '%':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber % secondNumber}');
        break;
      case '~/':
        print(
            '$firstNumber $operator $secondNumber = ${firstNumber ~/ secondNumber}');
        break;
      default:
        print('Operator tidak ditemukan'); // will print when the operator not found
    }
  }
}

class breakAndCont {
  void testPrimeNumber() {
    // prime number under 100
    var primeNumbers = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,73,79,83,89,97];

    var searchNumber = 13;
    print('Bilangan prima di antara 1-100: $searchNumber');

    for (int i = 0; i < primeNumbers.length; i++) {
      if (searchNumber == primeNumbers[i]) {
        print('$searchNumber adalah bilangan prima ke-${i + 1}');
        break; // stop when the searchNumber is found
      }
      print('$searchNumber != ${primeNumbers[i]}');
    }
  }

  void continueTest() {
    for (int i = 1; i <= 10; i++) {
      if (i % 3 == 0) {
        continue; // continue
        // (skip and not prints the value that has a remainder = 0
        // after divided by 3)
      }
      print(i); // prints the value that has a remainder when divided by 3
    }
  }
}

class forLoopTest {
  void testLoop() {
    for (int x = 1; x <= 7; x++) {
      for (int y = 0; y < x; y++) {
        stdout.write('$x ');
      }
      print(' ');
    }
  }

  void whileTest() {
    var x = 1;
    while (x > 0 && x <= 25) {
      stdout.write('$x ');
      x++;
    }
  }

  void doWhileTest() {
    var x = 10;
    var y = 11;
    do {
      stdout.write('$y ');
      y--;
    } while (y <= 11 && y > 0);
  }

  void testPattern() {
    // for (int x = 0; x <= 10; x++){
    //   for (int y = 10; y >= 20; y++){
    //     stdout.write("@ ");
    //   }
    //   print('*');
    // }

    for (int a = 10; a >= 1; a--){
      for (int b = 10; b >= 11 - a; b--) {
        stdout.write('# ');
      }
      print(' ');
    }

  }
}

class ifElseCondition {
  void simpleIf() {
    var isRaining = true; // you can change to 'true/false'

    print('Prepare before going to office.');
    if (isRaining) {
      print("Oh. It's raining, bring an umbrella.");
    }
    print('Going to the office.');
  }

  void tryElse() {
    var openHours = 9;
    var closedHours = 22;
    var now = 17;

    if (now > openHours && now < closedHours) {
      print("\nHello, the store is open");
    } else {
      print("\nSorry, the store has closed");
    }
  }

  String calculateScore(num score) {
    if (score > 90) {
      return 'A';
    } else if (score > 80) {
      return 'B';
    } else if (score > 70) {
      return 'C';
    } else if (score > 60) {
      return 'D';
    } else {
      return 'E';
    }
  }

  void conditionalExpression() {
    var openHours = 9;
    var closedHours = 22;
    var now = 17;

    // condition ? true expression : false expression
    var shopStatus = now > openHours
        ? print("\nHello, we're open")
        : print("\nSorry, we've closed");

    var name;
    // expression1 ?? expression2
    var buyer = name ?? print('user');
  }

  int testBuy() {
    int oilThatShouldBuy;
    var egg = 5;

    if (egg > 0) {
      oilThatShouldBuy = 6;
    } else {
      oilThatShouldBuy = 1;
    }
    return oilThatShouldBuy;
  }
}
