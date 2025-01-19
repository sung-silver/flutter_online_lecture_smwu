import 'collections.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  // Collections collections = Collections();
  // collections.setPractice();

  Person person1 = Person('으나', 25, 50.0);
  print('person1 : $person1');

  String talk1 = person1.talk('김연아');
  print(talk1);

  /// Person List 변수를 만드세요.
  /// 변수에 Person 인스턴스 3개를 추가하세요.
  List<Person> personList = [];
  personList.add(Person('이름1', 30, 60));
  personList.add(Person('이름2', 40, 70));
  personList.add(Person('이름3', 50, 80));

  var talk2 = personList[1].talk(personList[0].name);
  print(talk2);

  Product product = Product(name: '라떼', company: '스타벅스', price: 3000);

  // var product = Product('아메리카노', '스타벅스');
  // print(product);
  // product.sale();
  // product.sale();
  // print(product);


}

void variableTest() {
  // 타입 변수명 = 값
  String name = 'sung-silver';
  print(name);

  double weight = 50;
  print(weight);

  int age = 25;
  print(age);

  bool b = true;
  b = false;
  print(b);

  var name2 = 'sung-silver';
  // name2 = 1;

  /// dynamic을 많이 사용하지는 않음
  /// 휴먼 오류의 가능성이 높음
  dynamic name3 = 'sung-silver';
  name3 = 1;
  name3 = false;
  print(name3);

  // 상수는 final, const 키워드로 정의
  const name5 = 'sung-silver';
}