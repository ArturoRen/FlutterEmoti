import 'dart:async';
import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';

typedef AnimationBuilder = Widget Function(
  AnimationController controller,
  Widget child,
  AnimationParam animationParam,
);

class CustomSmartDialog {
  // 私有构造函数
  CustomSmartDialog._privateConstructor();
  // 单例对象
  static final CustomSmartDialog _instance =
      CustomSmartDialog._privateConstructor();
  // 工厂构造函数
  factory CustomSmartDialog() {
    return _instance;
  }

  static final _openDialogs = <String>[]; // 存储dialog标识的列表

  static Future<bool> _checkConditionAndDoSomething({
    required Future<bool> Function()? conditionChecker,
    required String tag,
  }) async {
    //默认条件为 true
    bool conditionMet =
        await (conditionChecker?.call() ?? Future.value(true)).timeout(
      const Duration(seconds: 2),
      onTimeout: () => false,
    );
    if(conditionMet){
      _openDialogs.addNonNull(tag);
    }
    return conditionMet;
  }

  //
  static Future<T?> showDiaslog<T>({
    required WidgetBuilder builder,
    required String tag,
    Future<bool> Function()? openBefore,
    SmartDialogController? controller,
    Alignment? alignment,
    bool? clickMaskDismiss,
    bool? usePenetrate,
    bool? useAnimation,
    SmartAnimationType? animationType,
    List<SmartNonAnimationType>? nonAnimationTypes,
    AnimationBuilder? animationBuilder,
    Duration? animationTime,
    Color? maskColor,
    Widget? maskWidget,
    bool? debounce,
    VoidCallback? onDismiss,
    VoidCallback? onMask,
    Duration? displayTime,
    bool? backDismiss,
    bool? keepSingle,
    bool? permanent,
    bool? useSystem,
    bool? bindPage,
    BuildContext? bindWidget,
    Rect? ignoreArea,
  }) async {
    //执行开启前的操作
    bool checkOpenBefore = await _checkConditionAndDoSomething(
      conditionChecker: openBefore,
      tag: tag,
    );
    //如果有bindWidget，需要判断是否已经销毁
    bool checkBindWidget = bindWidget?.mounted ?? true;
    if (checkOpenBefore && checkBindWidget) {
      return await SmartDialog.show(
        builder: builder,
        controller: controller,
        alignment: alignment,
        clickMaskDismiss: clickMaskDismiss,
        animationType: animationType,
        nonAnimationTypes: nonAnimationTypes,
        animationBuilder: animationBuilder,
        usePenetrate: usePenetrate,
        useAnimation: useAnimation,
        animationTime: animationTime,
        maskColor: maskColor,
        maskWidget: maskWidget,
        debounce: debounce,
        onDismiss: (){
           _openDialogs.remove(tag);
          onDismiss?.call();
        },
        onMask: onMask,
        displayTime: displayTime,
        tag: tag,
        backDismiss: backDismiss,
        keepSingle: keepSingle ?? true,
        permanent: permanent,
        useSystem: useSystem,
        bindPage: bindPage,
        ignoreArea: ignoreArea,
        // ignore: use_build_context_synchronously
        bindWidget: bindWidget,
      );
    }
    return null;
  }

  static Future<void> dismissDialog<T>({
    required String tag,
    T? result,
  }) async {
    _openDialogs.remove(tag);
    return SmartDialog.dismiss<T>(
      tag: tag,
      result: result,
      status: SmartStatus.allDialog,
      force: true,
    );
  }
}
