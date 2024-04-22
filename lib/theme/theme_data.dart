import 'dart:async';

import 'package:emoti/app_entrance/app.dart';
import 'package:emoti/packages.dart';
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
  ThemeMode appThemeMode = ThemeMode.light;

  //app主色调
  FlexScheme currentScheme = FlexScheme.amber;

  //改变模式
  Future<void> changeThemeMode({
    required BuildContext context,
    ThemeMode? appThemeModeParams,
    bool restart = false,
  }) async {
    appThemeModeParams ??= appThemeMode;
    Get.changeThemeMode(appThemeModeParams);
    appThemeMode = appThemeModeParams;
    appEntranceController().update();
    if (restart) {
      //强制触发 build
      await Get.forceAppUpdate();
    }
  }

  //改变主题
  Future<void> changeTheme({
    required BuildContext context,
    FlexScheme? flexSchemeParams,
    bool restart = false,
  }) async {
    flexSchemeParams ??= currentScheme;
    //更新当前的值
    currentScheme = flexSchemeParams;
    //获取当前系统模式
    //当前是否夜间模式
    bool isDark = AppThemeData().appThemeMode == ThemeMode.dark;
    if (isDark) {
      //夜间模式
      Get.changeTheme(appDarkThemeData(flexSchemeParams));
    } else {
      //白天模式
      Get.changeTheme(appLightThemeData(flexSchemeParams));
    }
    appEntranceController().update();
    if (restart) {
      //强制触发 build
      await Get.forceAppUpdate();
    }
  }

  ThemeData appLightThemeData(FlexScheme? scheme) {
    return FlexThemeData.light(
      scheme: scheme ?? currentScheme,
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
      scheme: scheme ?? currentScheme,
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
