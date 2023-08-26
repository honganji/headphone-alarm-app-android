import 'package:flutter/material.dart';
import 'package:headphone_alarm_android_app/view/component/item_title.dart';

class Volume extends StatelessWidget {
  const Volume({required this.itemTitle, super.key});
  final String itemTitle;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.8,
      child: Row(
        children: [
          ItemTitle(itemTitle: itemTitle),
          const Text("Something"),
        ],
      ),
    );
  }
}
