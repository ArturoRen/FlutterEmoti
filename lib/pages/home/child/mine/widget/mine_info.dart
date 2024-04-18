import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/mine_logic.dart';
import 'package:flutter/material.dart';

class MineInfo extends GetView<MineLogic> {
  const MineInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 76,
              height: 76,
              child: Icon(
                Icons.account_circle_rounded,
                size: 76,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 6),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "nickname",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
