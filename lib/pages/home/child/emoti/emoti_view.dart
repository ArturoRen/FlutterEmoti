import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'emoti_logic.dart';
import 'emoti_state.dart';

/// @description:
/// @author
/// @date: 2024-04-06 15:11:04
class EmotiPage extends StatelessWidget {
  final EmotiLogic logic = Get.put(EmotiLogic());
  final EmotiState state = Get.find<EmotiLogic>().state;

  EmotiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
