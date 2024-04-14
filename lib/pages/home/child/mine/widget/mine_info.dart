import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/mine_logic.dart';
import 'package:flutter/material.dart';

class MineInfo extends GetView<MineLogic> {
  const MineInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("23"),
        ],
      ),
    );
  }
}
