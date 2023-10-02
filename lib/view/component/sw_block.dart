import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/view/component/sw_wheel.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class SWBlock extends ConsumerWidget {
  const SWBlock({required this.time, required this.initialValue, super.key});
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
      child: state.swState != StopWatchState.reset
          ? Text(
              stateNotifier.selectTime(time).toString().padLeft(2, "0"),
              style: const TextStyle(
                fontSize: 50,
              ),
            )
          : SWWheel(
              time: time,
              initialValue: initialValue,
            ),
    );
  }
}
