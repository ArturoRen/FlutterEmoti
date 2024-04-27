

import 'package:emoti/packages.dart';
import 'package:emoti/pages/boarding/boarding_logic.dart';

class BoardingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BoardingLogic>(() => BoardingLogic());
  }
}