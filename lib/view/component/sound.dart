import 'package:flutter/material.dart';
import 'package:headphone_alarm_android_app/view/component/item_title.dart';
import 'package:headphone_alarm_android_app/view/component/sound_drop_down_button.dart';

class Sound extends StatelessWidget {
  const Sound({required this.itemTitle, super.key});
  final String itemTitle;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.8,
      child: Row(
        children: [
          ItemTitle(itemTitle: itemTitle),
          const SoundDropDownButton()
        ],
      ),
    );
  }
}
