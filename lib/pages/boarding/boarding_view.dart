import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'boarding_logic.dart';
import 'boarding_state.dart';

/// @description:
/// @author 
/// @date: 2024-04-27 18:31:59
class BoardingPage extends GetView<BoardingLogic> {
  const BoardingPage({super.key});

  BoardingState get state => controller.state;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
