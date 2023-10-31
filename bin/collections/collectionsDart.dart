import 'dart:io';

void main() {
  print('Hello Collections');

  //this part is to try use method in "mapCollection" class --------------------
  quizCollection qc = new quizCollection();
  qc.testQuiz();

  //this part is to try use method in "mapCollection" class --------------------
  mapCollection mc = new mapCollection();
  // mc.testMap();

  //this part is to try use method in "setCollection" class --------------------
  setCollection sc = new setCollection();
  // sc.testSet();
  // sc.testUnionAndIntersection();

  //this part is to try use method in "listCollection" class --------------------
  listCollection lc = listCollection();
  // lc.testList();
  // lc.spreadOperator();
}

class quizCollection {
  void testQuiz() {
    var capital = {
      'Jakarta': 'Indonesia',
      'London': 'England',
      'Tokyo': 'Japan'
    };
    capital['New Delhi'] = 'India';

    print(capital['Tokyo']);
    print(capital['Indonesia']);
  }
}

class mapCollection {
  void testMap() {
    // map using '{}' to store key-value
    var capital = {
      'Jakarta': 'Indonesia',
      'London': 'England',
      'Tokyo': 'Japan'
    };
    print(capital);
    print(capital['London']);

    // how to show the keys (using .keys)
    var mapKeys = capital.keys;
    print("\nmapKeys: $mapKeys");
    // how to show the keys (using .values)
    var mapValues = capital.values;
    print("mapValues: $mapValues");

    // how to add/insert key-value into the map
    capital['New Delhi'] = 'India';

    print('\n${capital['Tokyo']}');
  }
}

class setCollection {
  void testSet() {
    var numberSet = new Set.from([1, 4, 6, 4, 6, 2, 5, 10, 1, 2]);
    // set will throw away the values that has duplicate values
    print(
        '\nWelcome to Set: set only can store a unique value (not dupclicate)');
    print(numberSet);

    print('\nHow to add data into the set: ');
    numberSet.add(11);
    numberSet.addAll({9, 7, 3});
    print(numberSet);

    print('\nHow to remove data in the set: ');
    print(numberSet.remove(4));
    print(numberSet);
    print('');
    print(numberSet.elementAt(2)); // elemen at index 2
  }

  void testUnionAndIntersection() {
    var setA = {1, 2, 3, 4, 5, 7};
    var setB = {1, 5, 7, 9, 11};

    var union = setA.union(setB);
    var intersection = setA.intersection(setB);

    print("\nUnion = Gabungan & Intersection = Irisan");
    print("union: $union");
    print("intersection: $intersection");
  }
}

class listCollection {
  void testList() {
    List<int> numberList = [1, 2, 3, 4, 5];
    List<String> strList = [
      'Wafiy Anwarul Hikam',
      'Hilya Zahra Alifa',
      'Ahmad Aurangzeb',
      'Singgi Aditya',
      'Ramadhani Pasulleri'
    ];
    print('\n$numberList');
    print(strList);

    // because the compiler can know the data type in the object list
    // so, we don't need to type the data type explicit

    var numList = [11, 22, 33, 44, 55];
    var stringList = ['Hello', 'Folks', 'Flutter', 'Dart', 'Golang'];
    print('\n$numList');
    print(numList.runtimeType);
    print('\n$stringList');
    print(stringList.runtimeType);

    print('\nDynamic List: ');
    List dynamicList = [1, 'Dicoding', true]; //index begins from 0,1, and 2
    stdout.write('${dynamicList.length}, ');
    print(dynamicList.runtimeType);

    print('');
    print(dynamicList[2]); //output true
    print(dynamicList[1]); //output Dicoding

    print('');
    for (int i = 0; i < dynamicList.length; i++) {
      stdout.write('${dynamicList[i]}, ');
    }

    // using for each
    var listSyrup = ["SIRUP ABC", "SIRUP MARJAN", "SIRUP LECI"];
    print('');
    listSyrup.forEach((s) => print(s));
    listSyrup.add('JAMU TEMULAWAK'); // 'add' is to insert into last list
    print(listSyrup);
    listSyrup.insert(
        1, 'SUSU JAHE'); // 'insert' is to insert into any index in list
    print(listSyrup);
    // how to change element list
    listSyrup[2] =
        'TEH ANGET'; // this line will change 'SIRUP MARJAN' to 'TEH ANGET'
    print(listSyrup);

    // remove specific list
    // listSyrup.remove('SIRUP LECI');

    // remove list at index 1
    // listSyrup.removeAt(1); // remove 'SUSU JAHE'

    // remove last data list
    // listSyrup.removeLast(); // remove 'JAMU TEMULAWAK'

    // remove list from index 0-1 (index 2 still exist)
    // listSyrup.removeRange(0,2); // remove 'SIRUP ABC' and 'SUSU JAHE'
    //
    print(listSyrup);
  }

  void spreadOperator() {
    // spread operator '...'
    // using '...' we can concatenate different list into one list
    var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
    var others = ['Cake', 'Pie', 'Donut'];
    var allFavorites = [...favorites, ...others]; // if you delete '...' symbol
    // the output will show 2 different list in 1 list
    // we can insert each elements of list into the each other list
    print('');
    print(allFavorites);

    // dynamic list
    List<dynamic>? list;
    List<dynamic>? list2 = [
      0,
      ...?list
    ]; // using null aware spread operation '...?'
    print('');
    print(list2);
  }
}
