import 'dart:io';

void main() {
  print('Hello Collections');

  listCollection lc = listCollection();
  lc.testList();
  lc.spreadOperator();
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
    listSyrup.insert(1, 'SUSU JAHE'); // 'insert' is to insert into any index in list
    print(listSyrup);
    // how to change element list
    listSyrup[2] = 'TEH ANGET'; // this line will change 'SIRUP MARJAN' to 'TEH ANGET'
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
    List<dynamic>? list2 = [0, ...?list]; // using null aware spread operation '...?'
    print('');
    print(list2);
  }
}
