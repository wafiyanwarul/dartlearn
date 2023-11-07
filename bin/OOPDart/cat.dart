import 'dart:ffi';

import 'animal.dart';
import 'ability/meow.dart';

class Cat extends Animal implements Meow{
  final String furColor;

  // buat constructor
  // Cat(String name, int age, double weight, String furColor)
  //   : this.furColor = furColor,
  //     super(name, age, weight);

  // menambahkan fur color ke Constructor
  // Cat(String name, int age, double weight, String furColor) : this.furColor = furColor, super(name, age, weight);

  // atau bisa kita persingkat menjadi
  Cat(String name, int age, double weight, this.furColor) : super(name, age, weight);

  void walk() {
    print('$name is walking');
  }

  @override
  void meow() {
    print('$name : miauu... miaauuu... ');
  }
}