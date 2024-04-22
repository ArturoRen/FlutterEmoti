import 'package:emoti/global_config/app_global.dart';
import 'package:emoti/router/router.dart';
import 'package:emoti/translate/translations.dart';
import 'package:flutter/material.dart';
import 'package:emoti/packages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

AppEntranceController appEntranceController() =>
    Get.find<AppEntranceController>();

class AppEntranceController extends GetxController {}

class AppEntrance extends StatefulWidget {
  const AppEntrance({super.key});

  @override
  State<AppEntrance> createState() => _AppEntranceState();
}

class _AppEntranceState extends State<AppEntrance> {
  @override
  void initState() {
    Get.put(AppEntranceController(), permanent: true);
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<AppEntranceController>(force: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppEntranceController>(builder: (context) {
      return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          navigatorObservers: [
            FlutterSmartDialog.observer,
          ],
          showSemanticsDebugger: false,
          debugShowMaterialGrid: false,
          supportedLocales: AppTranslations.supportedLocales,
          locale: AppGlobal().currentLanguage,
          home: child,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          themeMode: AppThemeData().appThemeMode,
          theme: AppThemeData().appLightThemeData(null),
          darkTheme: AppThemeData().appDarkThemeData(null),
          translations: AppTranslations(),
          fallbackLocale: AppTranslations().defaultLanguage,
          getPages: AppRoutes().routes,
          initialRoute: AppRoutes().initRoute,
          builder: FlutterSmartDialog.init(
            builder: (context, child) => Directionality(
              textDirection: AppTranslations().getTextDirection,
              child: ShowCaseWidget(
                builder: Builder(
                  builder: (context) {
                    return SizedBox(
                      child: child,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
