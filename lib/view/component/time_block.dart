import 'package:flutter/material.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/view/component/time_wheel.dart';

class TimeBlock extends StatelessWidget {
  const TimeBlock(
      {required this.time,
      required this.isStart,
      required this.currentNum,
      super.key});
  final Time time;
  final StopWatchState isStart;
  final int currentNum;

  @override
  Widget build(BuildContext context) {
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
      child: isStart == StopWatchState.start
          ? Text(
              currentNum.toString().padLeft(2, "0"),
              style: const TextStyle(
                fontSize: 50,
              ),
            )
          : TimeWheel(
              time: time,
              initialNum: currentNum,
            ),
    );
  }
}
