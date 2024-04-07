import 'package:emoti/extension/list_extension.dart';
import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/home_controller.dart';
import 'package:emoti/pages/home/widget/lazy_indexed_stack.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            return;
          },
          child: Scaffold(
            body: LazyIndexedStack(
              itemBuilder: (context, index) {
                return controller.bottomBarItemList
                    .map((e) => e.widget)
                    .toList()
                    .getElementAtIndex(
                      index,
                      const SizedBox.shrink(),
                    );
              },
              index: controller.bottomBarCurrentIndex,
              itemCount: controller.bottomBarItemList.length,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.bottomBarCurrentIndex,
              onTap: (index) {
                controller.bottomBarCurrentIndex = index;
                controller.update();
              },
              items: controller.bottomBarItemList
                  .map((e) => e.bottomNavigationBarItem)
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
