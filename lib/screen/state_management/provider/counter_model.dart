import 'package:flutter/cupertino.dart';

/// with: Dart 언어에만 있는 특별한 키워드. extends는 하나만 받을 수 있지만,
/// implement는 여러개를 구현할 수 있게 도와줌 -> Dart 언어에서는 with 키워드로 사용
class CounterModel with ChangeNotifier {
  int count = 0;

  void countUp() {
    count++;

    /// 리스너들에게 현재 changeNotifier 클래스에 있는
    /// 변수들의 값이 변경됐다고 알려준다
    notifyListeners();
  }
}