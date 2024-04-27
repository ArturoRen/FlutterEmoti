import 'package:emoti/packages.dart';
import 'package:emoti/pages/home/child/index/widget/index_help_menu/boarding_help.dart';
import 'package:emoti/pages/home/child/index/widget/index_help_menu/upgrade_help.dart';
import 'package:flutter/material.dart';

class IndexHelpMenu extends StatefulWidget {
  const IndexHelpMenu({super.key, required this.scrollController});

  final ScrollController scrollController;
  @override
  State<IndexHelpMenu> createState() => _IndexHelpMenuState();
}

class _IndexHelpMenuState extends State<IndexHelpMenu> {
  List<Widget> helpList = const [
    IndexUpgradeHelp(),
    BoardingHelpWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            "Help",
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          controller: widget.scrollController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //横轴三个子widget
            childAspectRatio: 0.6, //宽高比为1时，子widget
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemCount: helpList.length,
          itemBuilder: (context, index) {
            return helpList[index];
          },
        ),
      ],
    );
  }
}
