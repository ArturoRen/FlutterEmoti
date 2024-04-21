import 'package:emoti/model/mood_model/mood_model.dart';
import 'package:emoti/packages.dart';

/// @description:
/// @author
/// @date: 2024-04-06 14:41:46
class IndexState {
  IndexState() {
    ///Initialize variables
  }

  //心情数据
  List<MoodCategoryData> emojiCategoryList = const [
    MoodCategoryData(
        id: '', localIcon: Assets.emojiLaughing, remoteIcon: '', title: '开心'),
    MoodCategoryData(
        id: '', localIcon: Assets.emojiPensive, remoteIcon: '', title: '难过'),
    MoodCategoryData(
        id: '', localIcon: Assets.emojiRage, remoteIcon: '', title: '愤怒'),
    MoodCategoryData(
        id: '', localIcon: Assets.emojiClownFace, remoteIcon: '', title: '滑稽'),
    MoodCategoryData(
        id: '', localIcon: Assets.emojiHeartEyes, remoteIcon: '', title: '心动'),
    MoodCategoryData(
        id: '', localIcon: Assets.emojiSneezingFace, remoteIcon: '', title: '不舒服'),
  ];
}
