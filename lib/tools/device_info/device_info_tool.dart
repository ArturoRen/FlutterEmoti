import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoManager {
  // 私有构造函数
  DeviceInfoManager._();

  // 单例实例
  static final DeviceInfoManager instance = DeviceInfoManager._();

  // 设备信息
  BaseDeviceInfo? deviceInfo;

  // 初始化设备信息
  Future<BaseDeviceInfo> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if (deviceInfo != null) {
      return deviceInfo!;
    } else {
      if (Platform.isAndroid) {
        deviceInfo = await deviceInfoPlugin.androidInfo;
      } else if (Platform.isIOS) {
        deviceInfo = await deviceInfoPlugin.iosInfo;
      }else {
        throw Exception("Platform Error");
      }
    }
    return deviceInfo!;
  }
}
