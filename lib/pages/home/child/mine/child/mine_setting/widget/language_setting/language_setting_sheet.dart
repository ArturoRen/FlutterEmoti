import 'package:emoti/packages.dart';
import 'package:emoti/theme/style/color_blen.dart';
import 'package:emoti/translate/translations.dart';
import 'package:flutter/material.dart';

class LanguageSettingSheet extends StatelessWidget {
  const LanguageSettingSheet({super.key});
  static String tag = 'LanguageSettingSheet';

  static Future<T?> openLanguageSettingSheet<T>() async {
    return CustomSmartDialog.showDiaslog(
      builder: (context) => const LanguageSettingSheet(),
      tag: LanguageSettingSheet.tag,
      alignment: Alignment.bottomCenter,
      keepSingle: true,
    );
  }

  static Future<void> dismissLanguageSettingSheet<T>({T? result}) async {
    await CustomSmartDialog.dismissDialog<T>(
      tag: LanguageSettingSheet.tag,
      result: result,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      decoration: BoxDecoration(
        color: context.theme.bottomSheetTheme.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(23),
          topRight: Radius.circular(23),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 23,
            child: Center(
              child: Container(
                width: 40,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(2),
                  color: blendColor(
                    color: context.theme.bottomSheetTheme.backgroundColor,
                    amount: 0.5,
                    context: context,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 6,
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemExtent: 55.0,
                itemBuilder: (context, index) {
                  Locale locale = AppTranslations.supportedLocales[index];
                  //是否当前
                  bool isUse = locale == AppTranslations().currentLanguage;
                  return InkWell(
                    onTap: () {
                      AppTranslations().updateLocale(locale);
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            locale.languageCode,
                            style: context.theme.textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Visibility(
                            visible: isUse,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: SizedBox(
                                width: 16,
                                height: 16,
                                child: Icon(
                                  Icons.check_rounded,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: AppTranslations.supportedLocales.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
