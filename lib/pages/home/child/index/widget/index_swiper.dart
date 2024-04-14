import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/index/index_logic.dart';
import 'package:flutter/material.dart';

class IndexSwiperWidget extends GetView<IndexLogic> {
  const IndexSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220.w,
      child: Center(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return _buildSwiperItem(context: context);
          },
          autoplay: false,
          itemCount: 1,
          itemWidth: double.infinity,
          itemHeight: 190.w,
          scale: 0.8,
          layout: SwiperLayout.TINDER,
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
      margin: const EdgeInsets.all(3),
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
