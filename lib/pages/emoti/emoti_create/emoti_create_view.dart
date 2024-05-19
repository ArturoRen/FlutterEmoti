import 'dart:io';
import 'dart:math' as math;

import 'package:emoti/packages.dart';
import 'package:emoti/pages/emoti/emoti_create/emoti_create_logic.dart';
import 'package:emoti/pages/emoti/emoti_create/widget/mood_pic.dart';
import 'package:emoti/pages/emoti/emoti_create/widget/mood_select.dart';
import 'package:emoti/pages/emoti/emoti_create/widget/mood_text.dart';
import 'package:emoti/translate/translations.dart';
import 'package:emoti/utils/time_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// @description:
/// @author
/// @date: 2024-05-04 23:49:43
class EmotiCreatePage extends StatefulWidget {
  const EmotiCreatePage({super.key});

  @override
  State<EmotiCreatePage> createState() => _EmotiCreatePageState();
}

class _EmotiCreatePageState extends State<EmotiCreatePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //时间选择方法
  void selectTimeFun(BuildContext context) {
    EmotiCreateLogic controller = Get.find<EmotiCreateLogic>();
    if (Platform.isAndroid) {
      showDatePicker(
        context: context,
        currentDate: controller.state.selectTime,
        firstDate: DateTime(1999),
        lastDate: DateTime(2100),
        locale: AppTranslations().currentLanguage,
      ).then((value) {
        if (value != null && mounted) {
          controller.state.selectTime = value;
          controller.update();
        }
      });
    }
    if (Platform.isIOS) {
      DateTime sheetTime = controller.state.selectTime;
      showModalBottomSheet<DateTime>(
        context: context,
        builder: (BuildContext builder) {
          return SizedBox(
            height: math.max(ScreenUtil().screenHeight / 2.6, 280),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: CupertinoButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Center(child: Text('Cancel')),
                        ),
                      ),
                      const Expanded(child: SizedBox.shrink()),
                      Flexible(
                        child: CupertinoButton(
                          onPressed: () {
                            controller.state.selectTime = sheetTime;
                            controller.update();
                            Navigator.of(context).pop();
                          },
                          child: const Center(
                            child: Text(
                              'Confirm',
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (picked) {
                        if (mounted) {
                          sheetTime = picked;
                        }
                      },
                      initialDateTime: sheetTime,
                      minimumDate: DateTime(1999),
                      maximumDate: DateTime(2100),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 6,
                  ),
                ],
              ),
            ),
          );
        },
      ).then((value) {
        if (mounted && value != null) {
          debugPrint("23");
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
        ),
        title: GetBuilder<EmotiCreateLogic>(
          builder: (controller) {
            return InkWell(
              onTap: () => selectTimeFun(context),
              child: Container(
                decoration: BoxDecoration(
                    color: context.theme.primaryColor.withOpacity(.3),
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 3,
                ),
                child: Text(
                  controller.state.selectTime.formatYMDDate,
                ),
              ),
            );
          },
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: Get.back,
            icon: const Icon(
              Icons.save_as_rounded,
            ),
          ),
        ],
      ),
      body: GetBuilder<EmotiCreateLogic>(builder: (controller) {
        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    MoodSelectWidget(),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Mood",
                    textAlign: TextAlign.start,
                    style: context.theme.textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: MoodTextWidget(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Pic",
                    textAlign: TextAlign.start,
                    style: context.theme.textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if (controller.state.selectPicList.length > index) {
                      String path = controller.state.selectPicList[index];
                      return MoodPicWidget(
                        filePath: path,
                      );
                    } else {
                      return InkWell(
                        onTap: () {
                          controller.showSwitchPic();
                        },
                        child: const Card(
                          child: Icon(
                            Icons.photo_camera_back_rounded,
                          ),
                        ),
                      );
                    }
                  },
                  childCount: controller.state.selectPicList.length + 1,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 横轴子组件的数量
                  mainAxisSpacing: 6.0, // 网格行之间的间隙
                  crossAxisSpacing: 16.0, // 网格列之间的间隙
                  childAspectRatio: 1.0, // 子组件的宽高比
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
