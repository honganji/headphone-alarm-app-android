import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/constant/sound_list.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class SoundDropDownButton extends ConsumerWidget {
  const SoundDropDownButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return DropdownButton<String>(
      value: soundList[state.index],
      icon: const Icon(Icons.arrow_drop_down_outlined),
      items: soundList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        stateNotifier
            .setSoundIndex(soundList.indexOf(value ?? soundList.first));
      },
    );
  }
}
