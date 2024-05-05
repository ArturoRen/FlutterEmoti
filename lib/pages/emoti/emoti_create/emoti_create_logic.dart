import 'dart:io';

import 'package:emoti/packages.dart';
import 'package:emoti/utils/permission_utils.dart';
import 'package:flutter/cupertino.dart';

import 'emoti_create_state.dart';

/// @description:
/// @author
/// @date: 2024-05-04 23:49:43
class EmotiCreateLogic extends GetxController {
  final state = EmotiCreateState();

  //请求权限方法
  void voidrequestPermission(BuildContext context, Permission permission) {
    permission
        .onDeniedCallback(() {
          //拒绝
          permissionToAppSetting(context, permission);
        })
        .onGrantedCallback(showSwitchPic)
        .onLimitedCallback(() {
          //受限制
          noPermissionDialog(context, permission);
        })
        .onPermanentlyDeniedCallback(() {
          //永久拒绝
          permissionToAppSetting(context, permission);
        })
        .onProvisionalCallback(() {
          //临时授权，仅IOS
          noPermissionDialog(context, permission);
        })
        .onRestrictedCallback(() {
          //家长控制或企业政策等原因权限被禁用
          noPermissionDialog(context, permission);
        })
        .request();
  }

  //拍照或者打开·相册
  void showSwitchPic() {
    SmartDialog.show(
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      debugPrint(Platform.operatingSystemVersion);
                      debugPrint(Platform.operatingSystem);
                      debugPrint(Platform.version);
                    }
                    if (Platform.isIOS) {
                      voidrequestPermission(context, Permission.photos);
                    }
                  },
                  color: context.theme.primaryColor.withOpacity(.5),
                  alignment: Alignment.center,
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Photo",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoButton(
                  onPressed: () =>
                      voidrequestPermission(context, Permission.camera),
                  color: context.theme.primaryColor.withOpacity(.5),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Camer",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        );
      },
      keepSingle: true,
      debounce: true,
      alignment: Alignment.bottomCenter,
    );
  }
}
