import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';


class ShowcaseViewUtil {
  // 私有的构造函数
  ShowcaseViewUtil._privateConstructor();

  // 私有的静态实例
  static final ShowcaseViewUtil _instance =
      ShowcaseViewUtil._privateConstructor();

  // 公共的静态方法，用于获取单例实例
  static ShowcaseViewUtil get instance => _instance;

  static GlobalKey one = GlobalKey();
  static GlobalKey two = GlobalKey();
  static GlobalKey three = GlobalKey();

  void showShowcaseView(BuildContext context){
    ShowCaseWidget.of(context).startShowCase([one, two, three]);
  }
}
