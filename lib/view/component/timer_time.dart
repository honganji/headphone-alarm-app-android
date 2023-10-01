import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/view/component/time_block.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class TimerTime extends ConsumerWidget {
  const TimerTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);

    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 60),
      width: width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 0,
          ),
          TimeBlock(
            time: Time.hour,
            currentNum: state.hour,
          ),
          const Text(
            ":",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          TimeBlock(
            time: Time.minute,
            currentNum: state.minute,
          ),
          const SizedBox(
            width: 0,
          ),
        ],
      ),
    );
  }
}
