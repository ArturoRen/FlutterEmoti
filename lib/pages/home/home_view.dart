import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return BottomNavigationBar(
            currentIndex: controller.bottomBarCurrentIndex,
            onTap: (index){
              controller.bottomBarCurrentIndex = index;
              controller.update();
            },
            items: const [
              BottomNavigationBarItem(
                label: "1",
                icon: Icon(
                  Icons.ads_click_rounded,
                ),
              ),
              BottomNavigationBarItem(
                label: "2",
                icon: Icon(
                  Icons.abc,
                ),
              ),
              BottomNavigationBarItem(
                label: "2",
                icon: Icon(
                  Icons.abc,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
