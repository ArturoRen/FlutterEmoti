import 'package:emoti/packages.dart';
import 'package:emoti/pages/boarding/boarding_binding.dart';
import 'package:emoti/pages/boarding/boarding_view.dart';
import 'package:emoti/pages/emoti/emoti_create/emoti_binding.dart';
import 'package:emoti/pages/emoti/emoti_create/emoti_create_view.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_binding.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_setting_view.dart';
import 'package:emoti/pages/home/home_binding.dart';
import 'package:emoti/pages/home/home_view.dart';
import 'package:emoti/pages/splash/splash_binding.dart';
import 'package:emoti/pages/splash/splash_view.dart';
import 'package:emoti/widgets/pop_scope/pop_scope.dart';

class AppPaths {
  static final AppPaths _instance = AppPaths._();
  AppPaths._();
  factory AppPaths() => _instance;
  String splash = '/splash';
  String index = '/index';
  String home = '/home';
  //设置页
  String setting = '/setting';
  //引导页
  String onboarding = '/onboarding';
  //创建日记
  String emotiCreate = '/emoti_create';
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
      page: () => const PopScopeRoute(child: HomeView()),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppPaths().setting,
      page: () => const MineSettingPage(),
      binding: MineSettingBinding(),
    ),
    GetPage(
      name: AppPaths().onboarding,
      page: () => const BoardingPage(),
      binding: BoardingBinding(),
    ),
    GetPage(
      name: AppPaths().emotiCreate,
      page: () => const EmotiCreatePage(),
      binding: EmotiBinding(),
    ),
  ];
}
