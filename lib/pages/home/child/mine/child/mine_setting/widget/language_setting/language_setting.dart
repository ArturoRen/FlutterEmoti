import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/mine_setting_logic.dart';
import 'package:emoti/pages/home/child/mine/child/mine_setting/widget/language_setting/language_setting_sheet.dart';
import 'package:emoti/translate/translations.dart';
import 'package:flutter/material.dart';

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({super.key});
  static String buildId = 'LanguageSetting';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MineSettingLogic>(builder: (controller) {
      return InkWell(
        onTap: () {
          LanguageSettingSheet.openLanguageSettingSheet();
        },
        child: SizedBox(
          width: double.infinity,
          height: 55,
          child: Row(
            children: [
              const Icon(
                Icons.language_rounded,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Language".tr,
                    style: context.theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  AppTranslations().currentLanguage.languageCode,
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
    });
  }
}
