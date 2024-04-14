import 'package:emoti/translate/lang/en_US.dart';
import 'package:emoti/translate/lang/zh_CN.dart';
import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';

class AppTranslations extends Translations {
  static final AppTranslations _instance = AppTranslations._internal();
  factory AppTranslations() => _instance;
  AppTranslations._internal();

  //所有语言文件
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': zhCNKeys,
        'en_US': enUSKeys,
        'ar_SA': zhCNKeys,
      };

  static List<Locale> supportedLocales = const [
    Locale('zh', 'CN'),
    Locale('en', 'US'),
    Locale('ar', 'SA'),
  ];

  //当前选择的语言
  Locale currentLanguage = const Locale('zh', 'CN');

  //默认语言
  Locale get defaultLanguage => const Locale('zh', 'CN');

  //获取当前语言是否左对齐
  TextDirection get getTextDirection {
    if (rtlLanguages.contains(currentLanguage.languageCode)) {
      return TextDirection.rtl;
    } else {
      return TextDirection.ltr;
    }
  }

  //切换语言采用这个方法
  Future<void> updateLocale(Locale language) async {
    if (supportedLocales.contains(language)) {
      currentLanguage = language;
      await Get.updateLocale(language);
      //持久化保存
      //刷新全部页面的语言
    } else {
      currentLanguage = defaultLanguage;
      await Get.updateLocale(defaultLanguage);
      //持久化保存
      //刷新全部页面的语言
    }
  }
}
