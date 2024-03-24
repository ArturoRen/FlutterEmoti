///空安全扩展
/// 字符串扩展
extension StringExtension on String? {
  String nullSafe({String defaultValue = ''}) => this ?? defaultValue;
}

/// int 扩展
extension IntExtension on int? {
  int nullSafe({int defaultValue = 0}) => this ?? defaultValue;
}

/// double 扩展
extension DoubleExtension on double? {
  double nullSafe({double defaultValue = 0.0}) => this ?? defaultValue;
}

/// num 扩展
extension NumExtension on num? {
  num nullSafe({num defaultValue = 0}) => this ?? defaultValue;
}

/// 布尔类型 扩展
extension BoolExtension on bool? {
  bool nullSafe({bool defaultValue = false}) => this ?? defaultValue;
}
