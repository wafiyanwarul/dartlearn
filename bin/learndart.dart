import 'package:learndart/learndart.dart' as learndart;
import 'package:learndart/tempConvertion/tempConvert.dart' as tempConvert;
import 'dart:io';

/* this file
   is created
   to learn
   dart language
 */

void main() {
  print("Hello World!");

  //this part is to try use method in "convertTemperature" class, in file tempConvert
  // tempConvert.fahrenheitToCelcius();
  // tempConvert.celciusToFahrenheit();

  //this part is to try use method in "conditionTest" class
  // conditionTest cT = new conditionTest();
  // cT.ifelseCondition();
  // cT.useTryCatch();

  //this part is to try use method in "convertType" class
  // dataType ct = new dataType();
  // ct.datatypeCheck();
  // ct.datatypeConversion();
  // ct.eString();
  // ct.cBoolean();

  //this part is to try use method in "profile" class
  // profile pro = new profile();
  // pro.showProfile();

  //this part is to try use method in "mathOperation" class
  // mathOperation mo = new mathOperation();
  // print("This is multiplication:");
  // mo.multiplication(20, 5);
  //
  // print("\nThis is division: ");
  // mo.division(300, 2.5);
  //
  // print("\nThis is addition: ");
  // mo.addition(100, 40);
  //
  // print("\nThis is subtraction: ");
  // mo.subtraction(180, 20);
  //
  // print("\nThis is division return value: ");
  // mo.divReturnValue(16, 5);
  //
  // print("\nThis is modulus: ");
  // mo.modulus(324, 20);
}



class conditionTest {
  void ifelseCondition() {
    var x = 10;

    if (x >= 10) {
      print("Your value is more equals 10\n");
    } else if (x < 10 && x > 0) {
      print("Your value is between 1 - 9\n");
    } else {
      print("Your value is not more than 0\n");
    }
  }

  void useTryCatch() {
    try {
      var a, b, result;

      a = 101;
      b = 0;
      result = a ~/ b;
      print(result);
    // } on Exception { // catch in general use
    //   print("Don\'t use 0 to divide the number");
    } catch (e, s) {
      print("Exception happened: $e"); //show exception happened
      print("Stack trace: $s"); //show detail and where the exception happened
    } finally {
      print("This sentence will still printed"); //still executed when the code error or not
    }
  }
}

class dataType {
  var a, b, c, d;

  void datatypeCheck() {
    print(""); //make a line space

    //STRING
    a = 'Wafiy Anwarul Hikam'; //String
    print(a.runtimeType);

    //INTEGER
    b = 99; //int
    print(b.runtimeType);

    //DOUBLE
    c = 20.5; //double
    print(c.runtimeType);

    //BOOLEAN
    d = true; //bool
    print(d.runtimeType);
  }

  void datatypeConversion() {
    var w, x, y, z;

    print(""); //make a line space

    //String --> Integer
    w = int.parse('99');
    print(w);

    //String --> Double
    x = double.parse('17');
    print(x);

    //Integer --> String
    y = 57.toString();
    print(y);

    //Integer --> Double
    z = 3.14159.toStringAsFixed(2);
    print(z);
  }

  void eString() {
    print(""); //make a line space

    var s, ss, sss;
    s = '"Congratulations!" bro';
    print(s);

    ss = 'I think that\'s great'; //using backslash
    print(ss);

    sss = "Windows path: C:\\Program Files\\Dart"; //using double backslash
    print(sss);

    var name, club, emote;
    name = 'Ronaldo';
    club = 'Real Madrid';
    print("Hello $name, Welcome to $club");
    print('9 + 3 = ${36 / 3}'); //string interpolation
    print(
        r'Aku membeli mobil seharga $126,095.60'); //secara otomatis menganggap nilai mata uang
    //print emote love below
    print('Hello my crush \u2665'); //using unicode in string (format \uXXXX)
  }

  void cBoolean() {
    if (true) {
      print("It's true");
    } else {
      print("It's false");
    }
  }
}

/*this class using input method (standard in and out)
  from dart:io library
  */
class profile {
  var name, age, address, fullProfile;

  void showProfile() {
    stdout.write("What's your name? ");
    name = stdin.readLineSync()!;

    stdout.write("How old are you? ");
    age = int.parse(stdin.readLineSync()!);

    stdout.write("Where's your address? ");
    address = stdin.readLineSync()!;

    fullProfile =
        "\nHello $name \nYou're $age years old \nYour address is $address";
    print(fullProfile);
  }
}

//  this class are using methods that contains various math operation
class mathOperation {
  var number1, number2, result;

  //method for multiplication operation
  void multiplication(number1, number2) {
    result = number1 * number2;
    print("The result of $number1 * $number2 is $result");
  }

  //method for division operation
  void division(number1, number2) {
    result = number1 / number2;
    print("The result of $number1 / $number2 is $result");
  }

  //method for addition operation
  void addition(number1, number2) {
    result = number1 + number2;
    print("The result of $number1 + $number2 is $result");
  }

  //method for subtraction operation
  void subtraction(number1, number2) {
    result = number1 - number2;
    print("The result of $number1 - $number2 is $result");
  }

  //method for division but return value operation
  void divReturnValue(number1, number2) {
    result = number1 ~/ number2;
    print("The result of $number1 ~/ $number2 is $result");
  }

  //method for modulus operation
  void modulus(number1, number2) {
    result = number1 % number2;
    print("The result of $number1 % $number2 is $result");
  }
}
