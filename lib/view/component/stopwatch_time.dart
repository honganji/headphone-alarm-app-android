import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/view/component/sw_block.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class StopwatchTime extends ConsumerWidget {
  const StopwatchTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 60),
      width: width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SWBlock(
            time: Time.hour,
            currentNum: stateNotifier.getHour(),
            changeNumFun: stateNotifier.setTotalSWSeconds,
            isStart: state.swState,
          ),
          const Text(
            ":",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
          SWBlock(
            time: Time.minute,
            currentNum: stateNotifier.getMinute(),
            changeNumFun: stateNotifier.setTotalSWSeconds,
            isStart: state.swState,
          ),
          const Text(
            ":",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SWBlock(
            time: Time.second,
            currentNum: stateNotifier.getSecond(),
            changeNumFun: stateNotifier.setTotalSWSeconds,
            isStart: state.swState,
          ),
        ],
      ),
    );
  }
}
