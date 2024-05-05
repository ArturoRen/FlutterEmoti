import 'package:emoti/model/mood_model/mood_model.dart';
import 'package:emoti/tools/mood_category/mood_category_tool.dart';

/// @description:
/// @author 
/// @date: 2024-05-04 23:49:43
class EmotiCreateState {
  EmotiCreateState() {
    ///Initialize variables
  }

  // 选择的心情
  MoodCategoryData selectData = MoodCategoryTool.moodCategoryData.first;

  //选择的时间
  DateTime selectTime = DateTime.now();

  //文本
  String moodTetx = '';

  //上传的图片路径
  List<String> selectPicList = [];
}
