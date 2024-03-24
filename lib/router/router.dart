import 'package:emoti/packages.dart';
import 'package:flutter/cupertino.dart';

class AppPaths {
  static final AppPaths _instance = AppPaths._();
  AppPaths._();
  factory AppPaths() => _instance;
  String index = '/index';
}

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._();
  AppRoutes._();
  factory AppRoutes() => _instance;
  List<GetPage> routes = [
    GetPage(
      name: AppPaths().index,
      page: () => Container(),
    ),
  ];
}
