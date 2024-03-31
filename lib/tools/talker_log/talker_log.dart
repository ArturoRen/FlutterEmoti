import 'package:talker_flutter/talker_flutter.dart';

class TalkerLog {
  // 私有构造函数
  TalkerLog._internal() {
    talker = TalkerFlutter.init();
  }
  // _instance变量保存单例实例
  static final TalkerLog _instance = TalkerLog._internal();
  // 提供一个工厂构造函数来获取单例
  factory TalkerLog() {
    return _instance;
  }

  //日志package
  late final Talker talker;
}
