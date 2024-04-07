import 'package:emoti/packages.dart';
import 'package:emoti/pages/splash/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => SplashController());
  }
}