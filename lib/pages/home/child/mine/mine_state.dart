import 'package:emoti/packages.dart';
import 'package:emoti/router/router.dart';
import 'package:emoti/utils/function_utils.dart';
import 'package:flutter/material.dart';

sealed class MineConfig {
  String text;
  VoidCallback throttleTap;
  IconData icon;
  MineConfig(
    this.text,
    this.throttleTap,
    this.icon,
  );
}

class MineConfigItem extends MineConfig {
  MineConfigItem(
    super.text,
    super.throttleTap,
    super.icon,
  );
}

/// @description:
/// @author
/// @date: 2024-04-06 14:41:54
class MineState {
  MineState() {
    ///Initialize variables
  }

  //个人中心的列表项目
  List<MineConfig> mineConfigList = <MineConfig>[
    MineConfigItem(
      "setting",
      throttleCall(
        () {
          Get.toNamed(AppPaths().setting);
        },
        const Duration(milliseconds: 600),
      ),
      Icons.settings_suggest_rounded,
    ),
    MineConfigItem(
      "about",
      throttleCall(
        () {
          SmartDialog.showToast("No About");
        },
        const Duration(milliseconds: 600),
      ),
      Icons.museum_sharp,
    ),
  ];
}
