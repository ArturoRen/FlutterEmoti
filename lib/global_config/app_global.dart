import 'package:emoti/tools/device_info/device_info_tool.dart';
import 'package:emoti/tools/sp_tool/sp_tool.dart';
import 'package:emoti/tools/sqflite/data_base_tool.dart';
import 'package:emoti/translate/translations.dart';
import 'package:flutter/widgets.dart';

class AppGlobal {
  // 私有静态变量，存储单例实例
  static final AppGlobal _instance = AppGlobal._internal();
  // 工厂构造函数，用于返回同一个实例
  factory AppGlobal() {
    return _instance;
  }
  // 私有构造函数，防止外部实例化
  AppGlobal._internal();
  // 是否为release版
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  //当前语言
  Locale get currentLanguage => AppTranslations().currentLanguage;

  //初始化方法
  static Future<void> initGlobal() async {
    //第一帧
    WidgetsFlutterBinding.ensureInitialized();
    //初始化sp缓存
    await SpTool().init();
    //获取缓存语言
    //设备信息初始化
    await DeviceInfoManager.instance.getDeviceInfo();
    //数据库初始化
    await DataBaseTool().initData();
  }

  bool get isAccessibilityEnabled {
    // 通过WidgetsBinding检查辅助功能是否启用
    return WidgetsBinding.instance.accessibilityFeatures.boldText;
  }
}
