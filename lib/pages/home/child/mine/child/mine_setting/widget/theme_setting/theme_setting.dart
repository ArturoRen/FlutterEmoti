import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_setting_logic.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/widget/theme_setting/theme_setting_sheet.dart';
import 'package:flutter/material.dart';

class ThemeSetting extends StatelessWidget {
  const ThemeSetting({super.key});
  static String buildId = 'ThemeSetting';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MineSettingLogic>(
      id: buildId,
      builder: (controller) {
        return InkWell(
          onTap: () {
            ThemeSettingSheet.showThemeSettingSheet();
          },
          child: SizedBox(
            width: double.infinity,
            height: 55,
            child: Row(
              children: [
                const Icon(
                  Icons.color_lens_rounded,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Theme".tr,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    AppThemeData().currentScheme.name.capitalizeFirstLetter(),
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
