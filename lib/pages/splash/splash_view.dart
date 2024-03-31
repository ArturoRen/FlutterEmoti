import 'package:emoti/packages.dart';
import 'package:emoti/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      autoRemove: true,
      builder: (controller) {
        return Container();
      },
    );
  }
}
