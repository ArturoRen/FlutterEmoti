import 'package:emoti/packages.dart';
import 'package:emoti/theme/style/color_blen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeSettingSheet extends StatefulWidget {
  const ThemeSettingSheet({super.key});

  static String tag = "ThemeSettingSheet";

  //打开
  static Future<T?> showThemeSettingSheet<T>() async {
    return CustomSmartDialog.showDiaslog(
      builder: (context) {
        return const ThemeSettingSheet();
      },
      tag: ThemeSettingSheet.tag,
      alignment: Alignment.bottomCenter,
      debounce: true,
      keepSingle: true,
    );
  }

  //关闭
  static Future<void> dismissThemeSettingSheet<T>({T? result}) async {
    CustomSmartDialog.dismissDialog<T>(
      tag: ThemeSettingSheet.tag,
      result: result,
    );
  }

  @override
  State<ThemeSettingSheet> createState() => _ThemeSettingSheetState();
}

class _ThemeSettingSheetState extends State<ThemeSettingSheet> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 370,
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
                  FlexScheme flexScheme = FlexScheme.values[index];
                  //这个性能耗费有点多
                  ThemeData itemTheme = FlexThemeData.light(scheme: flexScheme);
                  //是否当前设置的主题
                  bool isUse = AppThemeData().currentScheme == flexScheme;
                  return InkWell(
                    onTap: () {
                      AppThemeData().changeTheme(
                        context: context,
                        flexSchemeParams: flexScheme,
                        restart: true,
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 55,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              flexScheme.name.capitalizeFirstLetter(),
                              style: context.theme.textTheme.titleMedium,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: itemTheme.primaryColor,
                            ),
                          ),
                          Visibility(
                            visible: isUse,
                            child: const SizedBox(
                              width: 16,
                              height: 16,
                              child: Icon(
                                Icons.check_rounded,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: FlexScheme.values.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
