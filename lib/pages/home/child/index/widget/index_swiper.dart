import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/index/index_logic.dart';
import 'package:flutter/material.dart';

class IndexSwiperWidget extends GetView<IndexLogic> {
  const IndexSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35),
        child: AppinioSwiper(
          cardCount: 10,
          backgroundCardCount: 2,
          backgroundCardScale: 0.91,
          backgroundCardOffset: const Offset(0, 16),
          swipeOptions: const SwipeOptions.only(
            up: true,
            right: true,
            left: true,
            down: true,          ),
          loop: true,
          cardBuilder: (BuildContext context, int index) {
            return _buildSwiperItem(context: context);
          },
        ),
      ),
    );
  }

  //轮播选项
  Widget _buildSwiperItem({required BuildContext context}) {
    return Card(
      elevation: 10, //设置卡片阴影的深度
      color: context.theme.primaryColor,
      shadowColor: Colors.black.withOpacity(0.45),
      shape: RoundedRectangleBorder(
        //设置卡片圆角
        borderRadius: BorderRadius.circular(16),
      ),
      // margin: const EdgeInsets.all(3),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Text(
                  "23",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "324",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
