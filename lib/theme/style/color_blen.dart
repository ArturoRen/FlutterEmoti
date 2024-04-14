import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';

Color blendColor(
    {required Color? color,
    required double amount,
    required BuildContext context}) {
  if (color == null) {
    return Colors.transparent;
  }
  bool isDarkMode = false;

  if ((AppThemeData().appThemeMode == ThemeMode.dark) ||
      (Theme.of(context).brightness == Brightness.dark)) {
    isDarkMode = true;
  }
  // isDarkMode true 表示夜间模式，需要混入白色
  // 否则混入黑色
  int red = isDarkMode
      ? (color.red + ((255 - color.red) * amount)).toInt()
      : (color.red * (1 - amount)).toInt();
  int green = isDarkMode
      ? (color.green + ((255 - color.green) * amount)).toInt()
      : (color.green * (1 - amount)).toInt();
  int blue = isDarkMode
      ? (color.blue + ((255 - color.blue) * amount)).toInt()
      : (color.blue * (1 - amount)).toInt();

  return Color.fromARGB(color.alpha, red, green, blue);
}
