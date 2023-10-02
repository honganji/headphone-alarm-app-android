import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/enum/timer_state.dart';
import 'package:headphone_alarm_android_app/view/component/time_wheel.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class TimeBlock extends ConsumerWidget {
  const TimeBlock({required this.time, required this.initialValue, super.key});
  final Time time;
  final int initialValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return Container(
      alignment: Alignment.center,
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        color: const Color(0xFFDEDEDE).withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: state.timerState == TimerState.start
          ? Text(
              stateNotifier.selectTimerTime(time).toString().padLeft(2, "0"),
              style: const TextStyle(
                fontSize: 50,
              ),
            )
          : TimeWheel(
              time: time,
              initialValue: initialValue,
            ),
    );
  }
}
