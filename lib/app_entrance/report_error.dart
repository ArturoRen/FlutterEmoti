import 'dart:async';
import 'package:emoti/app_entrance/app.dart';
import 'package:emoti/global_config/app_global.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void runReportError() {
  FlutterError.onError = (FlutterErrorDetails details) {
    ///这里可以Flutter的同步异常，如widget渲染错误，布局错误等
    debugPrint('onError捕获到错误：');
    reportError(details.exception, details.stack);
    if (kReleaseMode && kProfileMode) {}
  };
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    ///这里可以捕获到Flutter的异步异常，以及捕获到与原生交互抛出的异常
    ///注意：该捕获方式与runZonedGuarded捕获方式类似
    debugPrint('PlatformDispatcher捕获到错误：');
    reportError(error, stack);
    return true;
  };
  ErrorWidget.builder = (FlutterErrorDetails details) {
    ///这里只能捕获到widget渲染错误，布局错误等
    debugPrint('ErrorWidget.builder错误');
    if (kDebugMode) {
      return ErrorWidget(details.exception);
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error!\n${details.exception}',
        style: const TextStyle(color: Colors.yellow),
        textAlign: TextAlign.center,
      ),
    );
  };
  runZonedGuarded(() {
    AppGlobal.initGlobal().then((value) {
      runApp(const AppEntrance());
    });
  }, (Object exception, StackTrace stackTrace) {
    debugPrint('Zone捕获到错误：');
    reportError(exception, stackTrace);
  });
}

void reportError(Object error, StackTrace? stack) {
  if (!kReleaseMode && !kProfileMode) {
    debugPrint('全局错误捕获：');
    debugPrint(error.toString());
    debugPrint(stack.toString());
  }
}
