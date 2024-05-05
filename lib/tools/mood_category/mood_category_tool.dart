import 'package:emoti/model/mood_model/mood_model.dart';
import 'package:emoti/packages.dart';

class MoodCategoryTool {
  static const List<MoodCategoryData> moodCategoryData = [
    MoodCategoryData(
      localIcon: Assets.emojiLaughing,
      remoteIcon: '',
      title: '开心',
    ),
    MoodCategoryData(
      localIcon: Assets.emojiPensive,
      remoteIcon: '',
      title: '难过',
    ),
    MoodCategoryData(
      localIcon: Assets.emojiRage,
      remoteIcon: '',
      title: '愤怒',
    ),
    MoodCategoryData(
      localIcon: Assets.emojiClownFace,
      remoteIcon: '',
      title: '滑稽',
    ),
    MoodCategoryData(
      localIcon: Assets.emojiHeartEyes,
      remoteIcon: '',
      title: '心动',
    ),
    MoodCategoryData(
      localIcon: Assets.emojiSneezingFace,
      remoteIcon: '',
      title: '不舒服',
    ),
  ];
}
