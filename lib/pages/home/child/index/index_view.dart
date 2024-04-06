import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/index/widget/index_swiper.dart';
import 'package:flutter/material.dart';

import 'index_logic.dart';
import 'index_state.dart';

/// @description:
/// @author
/// @date: 2024-04-06 14:41:46
class IndexPage extends StatelessWidget {
  final IndexLogic logic = Get.put(IndexLogic());
  final IndexState state = Get.find<IndexLogic>().state;

  IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().statusBarHeight,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
           const IndexSwiperWidget(),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
