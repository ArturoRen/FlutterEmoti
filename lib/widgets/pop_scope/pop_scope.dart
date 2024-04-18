import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 导航返回拦截
class PopScopeRoute extends StatefulWidget {
  const PopScopeRoute({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<PopScopeRoute> createState() => _PopScopeRouteState();
}

class _PopScopeRouteState extends State<PopScopeRoute> {
  DateTime? lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) return;
        SmartDialog.showToast("--");
        if (lastPressedAt == null ||
            DateTime.now().difference(lastPressedAt!) >
                const Duration(seconds: 2)) {
          lastPressedAt = DateTime.now();
          return;
        }
        SystemNavigator.pop();
      },
      child: widget.child,
    );
  }
}
