import 'dart:math' as math;

import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';

class BoardingHelpWidget extends StatelessWidget {
  const BoardingHelpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width:60,
            height: 100,
            child: CustomPaint(
              painter: WaveCurvePainter(
                context.theme.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveCurvePainter extends CustomPainter {
  final double waveFrequency;
  final double waveHeight;
  final Color color;
  // 自定义构造函数，接收波浪频率和高度作为参数
  WaveCurvePainter(
    this.color, {
    this.waveFrequency = 2.0,
    this.waveHeight = 20.0,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    Path path = Path();

    // 绘制背景圆角矩形
    Rect bgRect = Rect.fromLTRB(0, 0, size.width, size.height);
    RRect bgRRect = RRect.fromRectAndCorners(
      bgRect,
      // 可以指定需要的圆角大小
      bottomLeft: const Radius.circular(13),
      bottomRight: const Radius.circular(13),
      topLeft: const Radius.circular(13),
      topRight: const Radius.circular(13),
    );
    canvas.drawRRect(bgRRect, paint);

    // 移动到左上角
    path.moveTo(0, size.height * 0.5);

    // 绘制波浪曲线
    for (double i = 0; i <= size.width; i++) {
      // 使曲线左高右低
      double realWaveHeight = (size.height - (size.height / size.width) * i) *
          (math.sin((i / size.width * 2 * math.pi * waveFrequency) +
                  (math.pi / 2)) *
              waveHeight) /
          size.height;
      path.lineTo(i, size.height * 0.5 + realWaveHeight);
    }

    // 完成路径并绘制
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // 在此示例中始终返回true，因为我们的波浪形曲线是静态的
    return true;
  }
}
