import 'package:emoti/global_config/app_global.dart';
import 'package:emoti/router/router.dart';
import 'package:emoti/translate/translations.dart';
import 'package:flutter/material.dart';
import 'package:emoti/packages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppEntrance extends StatelessWidget {
  const AppEntrance({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: SizedBox(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
