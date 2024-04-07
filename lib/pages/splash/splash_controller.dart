import 'package:emoti/packages.dart';
import 'package:emoti/router/router.dart';

class SplashController extends GetxController{

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2),(){
      if(Get.currentRoute == AppPaths().splash){
        Get.offNamed(AppPaths().home);
      }
    });
  }
}