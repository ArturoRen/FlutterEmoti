import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}