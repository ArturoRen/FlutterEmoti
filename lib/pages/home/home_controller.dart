import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/emoti/emoti_view.dart';
import 'package:emoti/pages/home/child/index/index_view.dart';
import 'package:emoti/pages/home/child/mine/mine_view.dart';
import 'package:flutter/material.dart';

class _BottomBarItemType {
  BottomNavigationBarItem bottomNavigationBarItem;
  Widget widget;

  _BottomBarItemType(this.bottomNavigationBarItem, this.widget);
}

class HomeController extends GetxController {
  int bottomBarCurrentIndex = 0;

  // ignore: library_private_types_in_public_api
  List<_BottomBarItemType> bottomBarItemList = [
    _BottomBarItemType(
      const BottomNavigationBarItem(
        label: "Home",
        icon: Icon(
          Icons.home,
        ),
        tooltip: "Home",
      ),
      IndexPage(),
    ),
    _BottomBarItemType(
      const BottomNavigationBarItem(
        label: "Emoti",
        icon: Icon(
          Icons.emoji_emotions,
        ),
        tooltip: "Emoti",
      ),
      EmotiPage(),
    ),
    _BottomBarItemType(
      const BottomNavigationBarItem(
        label: "Mine",
        icon: Icon(
          Icons.account_box,
        ),
        tooltip: "Mine",
      ),
      MinePage(),
    ),
  ];
}
