import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view/component/start_buton.dart';
import 'package:headphone_alarm_android_app/view/component/stopwatch_time.dart';

class Stopwatch extends ConsumerWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        StopwatchTime(),
        // const Sound(itemTitle: "Sound"),
        // const Volume(itemTitle: "Volume"),
        SizedBox(
          height: 200,
        ),
        StartButton(),
      ],
    );
  }
}
