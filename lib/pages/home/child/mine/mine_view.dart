import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'mine_logic.dart';
import 'mine_state.dart';

/// @description:
/// @author 
/// @date: 2024-04-06 14:41:54
class MinePage extends StatelessWidget {
  final MineLogic logic = Get.put(MineLogic());
  final MineState state = Get.find<MineLogic>().state;

  MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(),
    );
  }
}
