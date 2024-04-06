import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

//这个没必要
class AppThemeData {
  AppThemeData._();
  static final AppThemeData _instance = AppThemeData._();
  factory AppThemeData() {
    return _instance;
  }

  //当前系统主题--默认跟随系统
  ThemeMode appThemeMode = ThemeMode.system;

  ThemeData appLightThemeData(FlexScheme? scheme) {
    return FlexThemeData.light(
      scheme: scheme,
      subThemesData: const FlexSubThemesData(
        interactionEffects: false,
      ),
      useMaterial3: true,
    ).copyWith(
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
    );
  }

  ThemeData appDarkThemeData(FlexScheme? scheme) {
    return FlexThemeData.dark(
      scheme: scheme,
      useMaterial3: true,
      subThemesData: const FlexSubThemesData(
        interactionEffects: false,
      ),
    ).copyWith(
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
    );
  }
}
