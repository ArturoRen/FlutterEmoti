import 'package:emoti/pages/home/child/mine/child/mine_setting/widget/language_setting/language_setting.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/widget/theme_mode_setting/theme_mode_setting.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/widget/theme_setting/theme_setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mine_setting_logic.dart';

/// @description:
/// @author
/// @date: 2024-04-14 08:45:00
class MineSettingPage extends GetView<MineSettingLogic> {
  const MineSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: Get.back,
        ),
        title: Text(
          "Setting".tr,
          style: context.textTheme.titleLarge,
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Card(
        elevation: 1.0,
        shadowColor: context.theme.cardColor,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(
              8,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          child: ListView(
            shrinkWrap: true,
            children: const [
              ThemeSetting(),
              ThemeModeSetting(),
              LanguageSetting(),
            ],
          ),
        ),
      ),
    );
  }
}
