import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/widget/mine_fun.dart';
import 'package:flutter/material.dart';

import 'mine_logic.dart';
import 'mine_state.dart';

/// @description:
/// @author
/// @date: 2024-04-06 14:41:54
class MinePage extends StatelessWidget {
  final MineLogic logic = Get.put(MineLogic());
  final MineState state = Get.find<MineLogic>().state;
  MinePage({super.key});

  void a() {
    debugPrint("------0999");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Mine".tr,
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        elevation: 0.0,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //列表项
          MineFun(),
        ],
      ),
    );
  }
}
