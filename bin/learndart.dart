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

  //this part is to try use method in "consFinal" class --------------------
  consFinal.consTest();
  consFinal cF = new consFinal();
  cF.finalTest();

  //this part is to try use method in "paramScope" class --------------------
  // var myParamScope = paramScope(); // Create an instance of the class
  // var price = 300000;
  // var discount = myParamScope.checkDiscount(price); // Call the method on the instance
  // print('The price is $price');
  // print('The discount is: $discount');
  // print('You need to pay ${price - discount}');

  //this part is to try use method in "funcTest" class ------------------------------
  // funcTest fT = new funcTest();
  // fT.greeting("Wafiy Anwarul Hikam", 2003);
  //
  // var x1, x2;
  // x1 = 205;
  // x2 = 295;
  // var test = fT.averageTest(x1, x2);
  // print('The average of $x1 and $x2 is $test');

  // IF YOU'RE NOT USE THE OPTIONAL PARAMETER, USE THIS BELOW
  // fT.greetNewUser('Anwarul Hikam', 19, false);

  // IF YOU USE THE OPTIONAL PARAMETER, YOU CAN USE THE METHOD CALL BELOW
  // YOU CAN SEE THAT, HERE WE'RE NOT DEFINE ALL OF THE PARAMETER'S VALUES
  // BUT IT'S STILL WORKS
  // fT.greetNewUser('Anwarul Hikam', 19);
  // fT.greetNewUser('Anwarul Hikam');
  // fT.greetNewUser();
  // WE CAN ALSO GIVE NULL TO PARAMETERS IF WE ONLY NEED THE LAST PARAMETER
  // fT.greetNewUser(null, null, true);

  // part NAMED OPTIONAL PARAMATERS
  // fT.greetNewUser(age: 17);

  // PART REQUIRED PARAMTER
  // fT.greetNewUser(name: 'Muhammad'); //the mandatory parameter is name

  //this part is to try use method in "convertTemperature" class, in file tempConvert
  // tempConvert.fahrenheitToCelcius();
  // tempConvert.celciusToFahrenheit();

  //this part is to try use method in "conditionTest" class ------------------------------
  // conditionTest cT = new conditionTest();
  // cT.ifelseCondition();
  // cT.useTryCatch();

  //this part is to try use method in "convertType" class --------------------
  // dataType ct = new dataType();
  // ct.datatypeCheck();
  // ct.datatypeConversion();
  // ct.eString();
  // ct.cBoolean();

  //this part is to try use method in "profile" class --------------------
  // profile pro = new profile();
  // pro.showProfile();

  //this part is to try use method in "mathOperation" class --------------------
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

const num pi = 3.14; //this value can't be reassigned
/*  Cons bersifat compile-time constants, it means that the value must be known before
    before the program runs. But final, the value can be reassigned when the runtimme
    or when the application running*/

// "immutable variable" variable that the value can't be changed

class consFinal {
  static void consTest() {
    // const pi = 3.14; //automatically double, but we can still declare explicit below
    var radius = 10;
    print(
        'Circle area with the radius $radius = ${calculateCircleArea(radius)}');
  }

  static num calculateCircleArea(num radius) => pi * radius * radius;

  void finalTest() {
    final firstName = "Achmad";
    final lastName = "Yusni";

    //lastName = 'Angga';       // tidak bisa dilakukan pengubahan nilai

    print('Hello $firstName $lastName');
  }
}

class paramScope {
  num checkDiscount(num price) {
    num discount = 0;
    if (price >= 100000) {
      discount = 10 / 100 * price;
    }
    return discount;
  }
}

class funcTest {
  var name, age, bornYear;

  void greeting(String name, bornYear) {
    age = 2023 - bornYear;
    print('Hello $name! This year you\'re $age years old');
  }

  double averageTest(num number1, num number2) {
    return (number1 + number2) / 2;
  }

  // we also can use "arrow syntax" below (=>)
  // void greeting(String name, bornYear) => print('Hello');
  // double averageTest(num number1, num number2) => (number1 + number2) / 2;

  // THE greetNewUser FUNCTION IS DOUBLE SO CHOOSE ONE TO USE
  // DON'T USE IN THE SAME TIME TO PREVENT THE ERROR
  // void greetNewUser(String name, int age, bool isVerified) {
  //   print('\nHello $name! \nYou\'re $age years old');
  //   if (isVerified == true) {
  //     print('You\'re verified');
  //   } else {
  //     print('You\'re not verified');
  //   }
  // }

  /* we also can use this way (OPTIONAL PARAMETER), in this case we're using
     dart's null safety, null safety will make the variable by default can't
     have null value (since version 2.12). So in order to the variable can have
     the null value we can adding '?' after the data type in the function's parameter, below
   * */
  // void greetNewUser([String? name, int? age, bool? isVerified]) {
  //   // but using this way, we've to pay attention to the order of parameter
  //   print('Welcome $name!, $age years old, You\'re $isVerified');
  // }

  // by using this way we no longer need pay attention again to the order of parameter
  // using '{' and '}' THIS WAY IS NAMED OPTIONAL PARAMETERS.
  // uncomment if you want to use this part
  // void greetNewUser({String? name, int? age, bool? isVerified}) {
  //   print('Welcome $name!, $age years old, You\'re $isVerified');
  // }

  // we can add 'required' to mark the mandatory parameter
  void greetNewUser({required String? name, int? age, bool? isVerified}) {
    print('Welcome $name!, $age years old, You\'re $isVerified');
  }
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
      print(
          "This sentence will still printed"); //still executed when the code error or not
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
