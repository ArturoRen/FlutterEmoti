import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/mine/mine_logic.dart';
import 'package:flutter/material.dart';

class MineFun extends GetView<MineLogic> {
  const MineFun({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical:6,
          ),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = controller.state.mineConfigList[index];
              return InkWell(
                onTap: item.throttleTap,
                child: AspectRatio(
                  aspectRatio: 375 / 55,
                  child: Row(
                    children: [
                      Icon(item.icon),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            item.text,
                            style: context.theme.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_rounded,
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: controller.state.mineConfigList.length,
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.theme.textTheme.bodyLarge?.color,
                  borderRadius: BorderRadius.circular(1),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
