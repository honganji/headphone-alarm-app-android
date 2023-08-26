import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view/component/sound.dart';
import 'package:headphone_alarm_android_app/view/component/start_buton.dart';
import 'package:headphone_alarm_android_app/view/component/stopwatch_time.dart';
import 'package:headphone_alarm_android_app/view/component/volume.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class Stopwatch extends ConsumerWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const StopwatchTime(),
        // const Sound(itemTitle: "Sound"),
        // const Volume(itemTitle: "Volume"),
        const SizedBox(
          height: 200,
        ),
        StartButton(startFun: stateNotifier.reverseIsStopwatchStart),
      ],
    );
  }
}
