import 'package:emoti/model/mood_model/mood_model.dart';
import 'package:emoti/packages.dart';
import 'package:emoti/pages/emoti/emoti_create/emoti_create_logic.dart';
import 'package:emoti/tools/mood_category/mood_category_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoodSelectWidget extends StatelessWidget {
  const MoodSelectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmotiCreateLogic>(builder: (controller) {
      return InkWell(
        onTap: () => MoodSelectSheetWidget.show(
          controller: controller,
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              controller.state.selectData.localIcon,
              width: 85,
              height: 85,
            ),
          ),
        ),
      );
    });
  }
}

//心情选择sheet
class MoodSelectSheetWidget extends StatelessWidget {
  const MoodSelectSheetWidget({
    super.key,
    required this.controller,
  });
  static const String tag = 'moodSelectSheetWidget';
  MoodSelectSheetWidget.show({
    super.key,
    BuildContext? context,
    required this.controller,
  }) {
    //隐藏键盘
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    SmartDialog.show(
      builder: (context) {
        return this;
      },
      tag: tag,
      alignment: Alignment.bottomCenter,
      keepSingle: true,
      bindPage: true,
      debounce: true,
    );
  }

  final EmotiCreateLogic controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().screenHeight * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          color: context.theme.scaffoldBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 20,
        ),
        child: GridView.builder(
          padding: const EdgeInsets.all(0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 每行显示4个网格元素
            mainAxisSpacing: 30, crossAxisSpacing: 30,
          ),
          itemBuilder: (BuildContext context, int index) {
            MoodCategoryData item = MoodCategoryTool.moodCategoryData[index];
            return Card(
              child: InkWell(
                onTap: () {
                  controller.state.selectData = item;
                  controller.update();
                  SmartDialog.dismiss(tag: MoodSelectSheetWidget.tag);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item.localIcon,
                      width: 75,
                      height: 75,
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: MoodCategoryTool.moodCategoryData.length,
        ),
      ),
    );
  }
}
