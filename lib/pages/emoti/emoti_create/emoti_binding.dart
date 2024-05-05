import 'package:emoti/packages.dart';
import 'package:emoti/pages/emoti/emoti_create/emoti_create_logic.dart';

class EmotiBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => EmotiCreateLogic());
  }
}