import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'emoti_detail_logic.dart';
import 'emoti_detail_state.dart';

/// @description:
/// @author 
/// @date: 2024-05-04 23:50:12
class EmotiDetailPage extends StatelessWidget {
  final EmotiDetailLogic logic = Get.put(EmotiDetailLogic());
  final EmotiDetailState state = Get.find<EmotiDetailLogic>().state;

  EmotiDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
