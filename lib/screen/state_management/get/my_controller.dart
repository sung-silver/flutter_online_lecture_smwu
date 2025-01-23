
import 'package:get/get.dart';

class MyController extends GetxController {
  /// MyController를 Get package에서 불러올 수 있는 함수
  static MyController get to => Get.find<MyController>();

  static void setController() {
    /// Get 패키지 안에 MyController가 등록 됐는지 아닌지 확인
    if(!Get.isRegistered<MyController>()) { // <>: 제네릭 타입
      /// Get 패키지에 MyController를 추가
      Get.put(MyController(), permanent: true);
    }
  }

  RxInt count = 0.obs; // Rx~~: 값 변경에 대한 리스터가 추가되어 있는 타입

  void countUp() {
    count.value++;
  }
}