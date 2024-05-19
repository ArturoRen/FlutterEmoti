import 'dart:io';

import 'package:emoti/packages.dart';
import 'package:emoti/pages/emoti/emoti_create/emoti_create_logic.dart';
import 'package:emoti/tools/path_provider/file_patth.dart';
import 'package:flutter/material.dart';

class MoodPicWidget extends StatefulWidget {
  const MoodPicWidget({super.key, required this.filePath});
  final String filePath;
  @override
  State<MoodPicWidget> createState() => _MoodPicWidgetState();
}

class _MoodPicWidgetState extends State<MoodPicWidget> {
  File? localFile;
  bool haveFile = true;

  void loadFile() async {
    localFile = await FilePathSingleton().getFile(widget.filePath);
    if (mounted) {
      setState(() {
        haveFile = localFile != null ? true : false;
      });
    }
  }

  @override
  void initState() {
    loadFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (haveFile && localFile == null) {}
    return Card(
      child: Stack(
        fit: StackFit.expand,
        children: [
          getChild(),
          Positioned(
            right: 2,
            top: 2,
            child: InkWell(
              onTap: () {
                if (Get.isRegistered<EmotiCreateLogic>()) {
                  EmotiCreateLogic controller = Get.find<EmotiCreateLogic>();
                  controller.state.selectPicList.remove(widget.filePath);
                  controller.update();
                }
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getChild() {
    if (haveFile && localFile == null) {
      return const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularProgressIndicator(),
      );
    } else if (haveFile && localFile != null) {
      return Image.file(
        localFile!,
        fit: BoxFit.cover,
      );
    } else {
      return const Icon(Icons.error);
    }
  }
}
