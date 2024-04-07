import 'package:emoti/packages.dart';

class SpTool {
  // 私有构造函数
  SpTool._privateConstructor();
  // 单例对象
  static final SpTool _instance = SpTool._privateConstructor();
  // 工厂构造函数
  factory SpTool() {
    return _instance;
  }
  static SharedPreferences? _prefs;

  //初始化方法
  Future<SharedPreferences> init() async {
    SharedPreferences res = await SharedPreferences.getInstance();
    _prefs = res;
    return res;
  }

  //判断是否已经初始化
  static bool initialized() => _prefs !=null;

  //清空所有
  Future<bool> clearAll() async {
    return await _prefs?.clear() ?? false;
  }

  //获取app本地缓存的语言
}
