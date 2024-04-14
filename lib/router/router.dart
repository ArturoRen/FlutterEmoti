import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_binding.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_setting_view.dart';
import 'package:emoti/pages/home/home_binding.dart';
import 'package:emoti/pages/home/home_view.dart';
import 'package:emoti/pages/splash/splash_binding.dart';
import 'package:emoti/pages/splash/splash_view.dart';

class AppPaths {
  static final AppPaths _instance = AppPaths._();
  AppPaths._();
  factory AppPaths() => _instance;
  String splash = '/splash';
  String index = '/index';
  String home = '/home';
  //设置页
  String setting = '/setting';
  
}

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._();
  AppRoutes._();
  factory AppRoutes() => _instance;

  String initRoute = AppPaths().splash;

  List<GetPage> routes = [
    GetPage(
      name: AppPaths().splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppPaths().home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppPaths().setting,
      page: () => const MineSettingPage(),
      binding: MineSettingBinding(),
    ),
  ];
}
