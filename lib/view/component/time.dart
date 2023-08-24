import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view/component/time_block.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class StopwatchTime extends ConsumerWidget {
  const StopwatchTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimeBlock(
            isHour: true,
            currentNum: state.stopwatchHour,
            changeNumFun: stateNotifier.changeStopwatchHour,
          ),
          TimeBlock(
            isHour: false,
            currentNum: state.stopwatchMinute,
            changeNumFun: stateNotifier.changeStopwatchMinute,
          ),
          TimeBlock(
            isHour: false,
            currentNum: state.stopwatchSecond,
            changeNumFun: stateNotifier.changeStopwatchSecond,
          ),
        ],
      ),
    );
  }
}
