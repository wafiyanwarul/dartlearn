import 'animal.dart' as animal;
import 'dart:io';

import 'animal.dart';
import 'bird.dart';
import 'cat.dart';

void main() {

  print(Rainbow.values); // print all values in the enum
  print(Rainbow.blue); // print 'Rainbow.blue'
  print(Rainbow.orange.index); // print 1
  print(Rainbow.blue.name);   // print blue

  var weatherForecast = Weather.cloudy;

  switch (weatherForecast) {
    case Weather.sunny:
      print("\nToday's weather forecast is sunny \nToday's your day");
      break;
    case Weather.cloudy:
      print("\nToday's weather forecast is cloudy \nBring your umbrella to avoid the rain");
      break;
    case Weather.rain:
      print("\nToday's weather forecast is rain \nYou can bring your umbrella");
      break;
    case Weather.storm:
      print("\nToday's weather forecast is storm \nKeep stay in your house");
      break;
  }

  var myCat = Cat("Kimba", 2, 3, 'Brown');
  stdout.write("\nMy cat's fur color is: ");
  print(myCat.furColor);
  myCat.walk();
  myCat.meow();

  var gBird = Bird('Kiki', 1, 0.4, 'Green to Yellow');
  stdout.write("\nMy bird's feather color is: ");
  print(gBird.featherColor);
  gBird.fly();


  // Animal myCat = new Animal('Bruno', 3, 5.9);
  // myCat.eat();
  // myCat.sleep();
  // myCat.poop();
  // print(myCat.weight);
  //
  // print('');
  // // cascade notation or cascade operator (.. or ?..)
  // var testCat = new Animal('', 2, 4.5)
  //   ..name = 'Gray'
  //   ..eat();
  //
  // testCat.poop();
  // testCat.sleep();
  //
  // var cuteCat = Cat('Grayson', 2, 2.2, 'Gray');
  //
  // print('');
  // cuteCat.walk();
  // cuteCat.eat();
  // print(cuteCat.weight);

  // we can find cascade operator in builder pattern below:
  // final addressBook = (AddressBookBuilder()
  //   ..name = 'jenny'
  //   ..email = 'jenny@example.com'
  //   ..phone = '415-555-0100')
  //     .build();
}

enum Rainbow {
  red, orange, yellow, green, blue, indigo, violet
}

enum Weather {
  sunny, cloudy, rain, storm;
}

