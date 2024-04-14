import 'package:emoti/packages.dart';
import 'package:emoti/theme/style/color_blen.dart';
import 'package:flutter/material.dart';

class ThemeModeSettingSheet extends StatefulWidget {
  const ThemeModeSettingSheet({super.key});

  static String tag = "ThemeModeSettingSheet";

  //打开
  static Future<T?> showThemeModeSettingSheet<T>() async {
    return CustomSmartDialog.showDiaslog(
      builder: (context) {
        return const ThemeModeSettingSheet();
      },
      tag: ThemeModeSettingSheet.tag,
      alignment: Alignment.bottomCenter,
      debounce: true,
      keepSingle: true,
    );
  }

  //关闭
  static Future<void> dismissThemeModeSettingSheet<T>({T? result}) async {
    CustomSmartDialog.dismissDialog<T>(
      tag: ThemeModeSettingSheet.tag,
      result: result,
    );
  }

  @override
  State<ThemeModeSettingSheet> createState() => _ThemeModeSettingSheetState();
}

class _ThemeModeSettingSheetState extends State<ThemeModeSettingSheet> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: ListView.builder(
                itemExtent: 55.0,
                cacheExtent: 15,
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  ThemeMode themeMode = ThemeMode.values[index];
                  //是否当前设置的模式
                  bool isUse = AppThemeData().appThemeMode == themeMode;
                  return InkWell(
                    onTap: () {
                      AppThemeData()
                          .changeThemeMode(
                        context: context,
                        appThemeModeParams: themeMode,
                        restart: true,
                      ).then((value) {
                        if (mounted) {
                          setState(() {});
                        }
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 55,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              themeMode.name.capitalizeFirstLetter(),
                              style: context.theme.textTheme.titleMedium,
                            ),
                          ),
                          Visibility(
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
                        ],
                      ),
                    ),
                  );
                },
                itemCount: ThemeMode.values.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
