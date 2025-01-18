class Collections {
  /// List, Map, Set

  void listPractice() {
    List<String> animalList = [];
    animalList.addAll(['고양이', '펭귄', '다람쥐', '토끼', '호랑이']);
    animalList.removeAt(1);
    print(animalList);
  }

  void mapPractice() {
    Map<String, int> map = {'김연아': 30, '홍길동': 50, '유재석': 40};
    map.removeWhere((key, value) => key == '홍길동');
    print('mapPractice : $map');
  }

  void setPractice() {
    Set<String> set = {};
    set.add('대한민국');
    set.add('영국');
    set.add('뉴질랜드');
    set.add('일본');
    set.add('베트남');
    set.removeWhere((element) => element == '대한민국');
    print('setPractice : $set');
  }

  void listAdd() {
    int age = 25;
    List<int> ageList = [];

    ageList.add(age);
    print('add 1 : $ageList');
    ageList.add(age);
    print('add 2 : $ageList');

    ageList.addAll([1,2,3,4,5]);
    print('add 3 : $ageList');

    ageList.insert(0, 100);
    print('add 4 : $ageList');
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.addAll(['김연아', '홍길동', '유재석', '변백현', '도경수']);

    nameList.removeLast();
    nameList.removeAt(1);
    print('listRemove 1 : $nameList');

    nameList.remove('변백현');
    print('listRemove 2 : $nameList');

    nameList.clear();
    print('listRemove 3 : $nameList');
  }

  void listController() {
    List<int> ageList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    print('listController 1 : ${ageList.length}');

    int ageFirst = ageList.first;
    int ageLast = ageList.last;
    print('ageFirst : $ageFirst, ageLast : $ageLast');

    int ageFour = ageList[3];
    print('listController 2 : $ageFour');
  }

  void collectionMap() {
    Map<String, int> nameAgeMap = {};
    nameAgeMap['haesa'] = 25;
    print(nameAgeMap);

    Map<String, dynamic> dynamicMap = {};
    dynamicMap['a'] = 1;
    dynamicMap['b'] = '고양이';
    dynamicMap['c'] = true;
    print(dynamicMap);

    print('get dynamicMap : ${dynamicMap['b']}');

    dynamicMap.remove('c');
    print('remove dynamicMap : $dynamicMap');

    print('dynamicMap length : ${dynamicMap.length}');
    dynamicMap.clear();
    print('clear dynamicMap : $dynamicMap');
  }

  void collectionSet() {
    // <타입> 지정을 안 해준 경우 아무 타입이나 받을 수 있음
    Set ss = {};
    ss.add('a');
    ss.add(1);
    print('collectionSet 1 : $ss');

    ss.remove('a');
    print('collectionSet 2 : $ss');
  }
}