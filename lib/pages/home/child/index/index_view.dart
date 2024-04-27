import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/index/widget/index_help_menu/index_help_menu.dart';
import 'package:emoti/pages/home/child/index/widget/index_record/index_record.dart';
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

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().statusBarHeight,
          left: 16,
          right: 16,
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const IndexSwiperWidget(),
              const IndexRecoed(),
              // Showcase(
              //   key: ShowcaseViewUtil.one,
              //   title: 'Menu',
              //   description: 'Click here to see menu options',
              //   child: GestureDetector(
              //     onTap: () {
              //       ShowCaseWidget.of(context).startShowCase(
              //         [
              //           ShowcaseViewUtil.one,
              //         ],
              //       );
              //     },
              //     child: const Icon(
              //       Icons.menu,
              //       color: Colors.black45,
              //     ),
              //   ),
              // ),
              IndexHelpMenu(
                scrollController: scrollController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
