import 'package:emoti/translate/lang/en_US.dart';
import 'package:emoti/translate/lang/zh_CN.dart';
import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';

class Messages extends Translations {
  static final Messages _instance = Messages._internal();
  factory Messages() => _instance;
  Messages._internal();

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


  //默认语言
  Locale get defaultLanguage => const Locale('zh', 'CN');

  //获取当前语言是否左对齐
  TextDirection getTextDirection(Locale localeLanguage){
    if(rtlLanguages.contains(localeLanguage.languageCode)){
      return TextDirection.rtl;
    }else{
      return TextDirection.ltr;
    }
  }
}
