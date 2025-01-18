import 'collections.dart';

void main() {
  Collections collections = Collections();
  collections.setPractice();
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