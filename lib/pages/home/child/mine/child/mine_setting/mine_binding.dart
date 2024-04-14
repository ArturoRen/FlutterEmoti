import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_setting_logic.dart';

class MineSettingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MineSettingLogic());
  }
}