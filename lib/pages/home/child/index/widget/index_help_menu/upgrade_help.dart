import 'dart:math' as math;
import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';

class IndexUpgradeHelp extends StatefulWidget {
  const IndexUpgradeHelp({super.key});

  @override
  State<IndexUpgradeHelp> createState() => _IndexUpgradeHelpState();
}

class _IndexUpgradeHelpState extends State<IndexUpgradeHelp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    )..repeat(); // This will start the animation as soon as controller is initialized

    _animation = Tween(begin: 0.0, end: 2 * math.pi).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AnimatedBuilder(
              animation: _animation,
              child: Icon(
                Icons.settings,
                size: 26,
                color: context.theme.primaryColor,
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animation.value,
                  child: child,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Upgrade",
                  style: context.theme.textTheme.bodyMedium,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: AutoSizeText(
                  "更新内容,这次更新了轮播图，设置页等等功能",
                  style: context.theme.textTheme.bodySmall,
                  minFontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
