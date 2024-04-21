import 'package:emoti/packages.dart';
import 'package:flutter/material.dart';

class IndexHelpMenu extends StatefulWidget {
  const IndexHelpMenu({super.key, required this.scrollController});

  final ScrollController scrollController;
  @override
  State<IndexHelpMenu> createState() => _IndexHelpMenuState();
}

class _IndexHelpMenuState extends State<IndexHelpMenu> {
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
            mainAxisSpacing: 6,
            crossAxisSpacing: 5,
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
              child: const Text('23'),
            );
          },
        ),
      ],
    );
  }
}
