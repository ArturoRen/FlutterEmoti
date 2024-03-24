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
  Map<String, Map<String, String>> get keys => _getCombinedMaps();
  Map<String, Map<String, String>> _getCombinedMaps() {
    return {
      'zh_CN': zhCNKeys,
      'en_US': enUSKeys,
    };
  }

  static List<Locale> supportedLocales = const [
    Locale('zh', 'CN'),
    Locale('en', 'US'),
  ];

  //获取当前语言是否左对齐
}
