abstract class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  //CONSTRUCTOR
  Animal(this._name, this._age, this._weight) {}

  // if want to to create default value of parameter
  // we can do this

  // uncomment if want to use this
  // Animal(this._name, this._age) {
  //   _weight = 4;
  // }

  // but this way isn't correct, because _weight parameter
  // should be declared before
  // so we can change like this

  //DEFAULT VALUE PARAMETER IN CONSTRUCTOR
  // Animal.cat(this._name, this._age) : _weight = 2 {
  //   // write your code here.
  // }

  // Named Constructor.
  // Animal.name(this.name);
  // Animal.age(this.age);
  // Animal.weight(this.weight);

  // getter
  String get name => _name;

  int get age => _age;

  double get weight => _weight;

  // setter
  set name(String value) {
    _name = value;
  }

  set age(int value) {
    _age = value;
  }

  set weight(double value) {
    _weight = value;
  }

  // for methods
  void eat() {
    print('$_name is eating');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping');
  }

  void poop() {
    print('$_name is pooping');
    _weight = _weight - 0.1;
  }
}
