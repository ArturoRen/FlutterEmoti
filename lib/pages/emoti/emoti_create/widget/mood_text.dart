import 'package:emoti/packages.dart';
import 'package:emoti/pages/emoti/emoti_create/emoti_create_logic.dart';
import 'package:flutter/material.dart';

class MoodTextWidget extends StatefulWidget {
  const MoodTextWidget({
    super.key,
  });

  @override
  State<MoodTextWidget> createState() => _MoodTextWidgetState();
}

class _MoodTextWidgetState extends State<MoodTextWidget> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GetBuilder<EmotiCreateLogic>(builder: (controller) {
        return TextField(
          controller: _textEditingController,
          maxLength: 700,
          maxLines: null,
          onChanged: (value) {
            controller.state.moodTetx = value;
            debugPrint("34");
            controller.update();
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0), // 设置圆角的大小
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: context.theme.primaryColor.withOpacity(.5),
                  width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: context.theme.primaryColor, width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        );
      }),
    );
  }
}
