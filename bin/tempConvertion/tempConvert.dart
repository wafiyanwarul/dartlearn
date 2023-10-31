import 'dart:io';

void fahrenheitToCelcius() {
  try {
    var f;
    double celcius;

    print("Fahrenheit --> Celcius");
    stdout.write("Insert fahrenheit temperature: ");
    f = stdin.readLineSync();
    celcius = ((double.parse(f)) - 32) * 5 / 9;
    print("$f fahrenheit = $celcius celcius");
  } catch (e, s) {
    print("Exception happened: $e");
    print("Detail exception: $s");
  }
}

void celciusToFahrenheit() {
  try {
    var celcius;
    double fahrenheit;

    print("Celcius --> Fahrenheit");
    stdout.write("Insert celcius temperature: ");
    celcius = stdin.readLineSync();
    fahrenheit = ((double.parse(celcius) * 9/5) + 32);
    print("$celcius celcius = $fahrenheit fahrenheit");
  } catch (e, s) {
    print("Exception happened: $e");
    print("Detail exception: $s");
  }
}

