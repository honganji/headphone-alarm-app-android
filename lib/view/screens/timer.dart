import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';
import 'package:headphone_alarm_android_app/enum/timer_state.dart';
import 'package:headphone_alarm_android_app/view/component/alarm_stop_button.dart';
import 'package:headphone_alarm_android_app/view/component/start_button.dart';
import 'package:headphone_alarm_android_app/view/component/timer_time.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class Timer extends ConsumerWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    return Column(
      children: [
        const TimerTime(),
        // const Sound(itemTitle: "Sound"),
        // const Volume(itemTitle: "Volume"),
        const SizedBox(
          height: 200,
        ),
        Visibility(
          visible: state.swState != StopWatchState.ringing &&
              state.timerState != TimerState.ringing,
          child: const StartButton(),
        ),
        Visibility(
            visible: state.swState == StopWatchState.ringing ||
                state.timerState == TimerState.ringing,
            child: AlarmStopButton(id: state.isSW ? 1 : 2)),
      ],
    );
  }
}
