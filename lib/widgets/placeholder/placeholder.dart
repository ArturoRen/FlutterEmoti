import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({super.key, this.width, this.height});
  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
