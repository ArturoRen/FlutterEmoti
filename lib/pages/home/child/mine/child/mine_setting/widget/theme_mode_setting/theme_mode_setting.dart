import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_setting_logic.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/widget/theme_mode_setting/theme_model_setting_sheet.dart';
import 'package:flutter/material.dart';

class ThemeModeSetting extends StatelessWidget {
  const ThemeModeSetting({super.key});
  static String buildId = 'ThemeModeSetting';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MineSettingLogic>(
      id: buildId,
      builder: (controller) {
        return InkWell(
          onTap: () {
            ThemeModeSettingSheet.showThemeModeSettingSheet();
          },
          child: SizedBox(
            width: double.infinity,
            height: 55,
            child: Row(
              children: [
                Builder(builder: (context) {
                  switch (AppThemeData().appThemeMode) {
                    case ThemeMode.light:
                      return const Icon(
                        Icons.light_mode_rounded,
                      );
                    case ThemeMode.dark:
                      return const Icon(
                        Icons.dark_mode_rounded,
                      );
                    default:
                      if (Get.isDarkMode) {
                        return const Icon(
                          Icons.light_mode_rounded,
                        );
                      } else {
                        return const Icon(
                          Icons.dark_mode_rounded,
                        );
                      }
                  }
                  ;
                }),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "ThemeMode".tr,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    AppThemeData().appThemeMode.name.capitalizeFirstLetter(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.theme.textTheme.bodyLarge,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
