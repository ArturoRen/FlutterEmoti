import 'package:emoti/packages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//请求去设置打开权限
void permissionToAppSetting(
  BuildContext context,
  Permission permission,
) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return PopScope(
        canPop: true,
        child: Center(
          child: SizedBox(
            width: ScreenUtil().screenWidth * .8,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 6,
                    ),
                    Text(
                      "没有权限",
                      style: context.theme.textTheme.titleLarge,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 26,
                    ),
                    Text(
                      "app需要你的允许，才能使用此功能，为了你的使用体验，app请求去设置开启${permission.toString().replaceFirst('Permission.', '')}权限",
                      textAlign: TextAlign.center,
                      style: context.theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                          child: const Text("Cancel"),
                        ),
                        CupertinoButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                            openAppSettings();
                          },
                          child: const Text("Confirg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

//权限收到限制，使用者无法打开
void noPermissionDialog(
  BuildContext context,
  Permission permission,
) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return PopScope(
        canPop: true,
        child: Center(
          child: SizedBox(
            width: ScreenUtil().screenWidth * .8,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 6,
                    ),
                    Text(
                      "没有权限",
                      style: context.theme.textTheme.titleLarge,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 26,
                    ),
                    Text(
                      "app需要你的允许，才能使用此功能，系统拒绝或限制了app使用该权限，请开启${permission.toString().replaceFirst('Permission.', '')}权限后再使用",
                      textAlign: TextAlign.center,
                      style: context.theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                          child: const Text("Cancel"),
                        ),
                        CupertinoButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                            openAppSettings();
                          },
                          child: const Text("Confirg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
