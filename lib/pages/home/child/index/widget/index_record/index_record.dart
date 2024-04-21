import 'package:emoti/model/mood_model/mood_model.dart';
import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/index/index_logic.dart';
import 'package:flutter/material.dart';

class IndexRecoed extends StatelessWidget {
  const IndexRecoed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "你现在心情怎么样",
              maxLines: 1,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.titleLarge,
            ),
          ),
          const PlaceholderWidget(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            height: 95,
            child: GetBuilder<IndexLogic>(
              builder: (controller) {
                return ListView.separated(
                  padding: const EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 16,
                    );
                  },
                  itemBuilder: (context, index) {
                    MoodCategoryData item =
                        controller.state.emojiCategoryList[index];
                    return _moodListItem(
                      index,
                      item,
                    );
                  },
                  itemCount: controller.state.emojiCategoryList.length,
                );
              },
            ),
          ),
          const PlaceholderWidget(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _moodListItem(int index, MoodCategoryData item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.4),
          width: 1,
        ),
      ),
      child: Builder(builder: (context) {
        return SizedBox(
          width: 85,
          height: 85,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      item.localIcon,
                    ),
                  ),
                ),
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
