class SpKey {
  // 私有构造函数
  SpKey._privateConstructor();
  // 单例对象
  static final SpKey _instance = SpKey._privateConstructor();
  // 工厂构造函数
  factorySpKey() {
    return _instance;
  }

  String langleKey = 'langle_key';
}
