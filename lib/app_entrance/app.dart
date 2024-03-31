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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorObservers: [FlutterSmartDialog.observer],
        supportedLocales: Messages.supportedLocales,
        locale: AppGlobal().currentLanguage,
        home: child,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        translations: Messages(),
        fallbackLocale: Messages().defaultLanguage,
        getPages: AppRoutes().routes,
        initialRoute: AppRoutes().initRoute,
        builder: FlutterSmartDialog.init(
          builder: (context, child) => Directionality(
            textDirection: Messages().getTextDirection(
              AppGlobal().currentLanguage,
            ),
            child: SizedBox(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
