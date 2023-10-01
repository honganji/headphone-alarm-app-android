import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view/component/start_button.dart';
import 'package:headphone_alarm_android_app/view/component/timer_time.dart';

class Timer extends ConsumerWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        TimerTime(),
        SizedBox(
          height: 200,
        ),
        StartButton(),
      ],
    );
  }
}
