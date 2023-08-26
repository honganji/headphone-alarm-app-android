import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:headphone_alarm_android_app/view/component/start_buton.dart';
import 'package:headphone_alarm_android_app/view/component/timer_time.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class Timer extends ConsumerWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return Column(
      children: [
        TimerTime(),
        const SizedBox(
          height: 200,
        ),
        StartButton(startFun: stateNotifier.reverseIsTimerStart),
      ],
    );
  }
}
