import 'package:emoti/translate/translations.dart';
import 'package:flutter/material.dart';
import 'package:emoti/packages.dart';

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
        locale: Messages.supportedLocales.first,
        fallbackLocale: Messages.supportedLocales.first,
        home: child,
        builder: FlutterSmartDialog.init(
          builder: (context, child) => SizedBox(
            child: child,
          ),
        ),
      ),
    );
  }
}
