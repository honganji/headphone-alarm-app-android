import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class TimeWheel extends ConsumerStatefulWidget {
  const TimeWheel({required this.time, required this.initialNum, super.key});
  final Time time;
  final int initialNum;

  @override
  ConsumerState<TimeWheel> createState() => _TimeWheelState();
}

class _TimeWheelState extends ConsumerState<TimeWheel> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: widget.initialNum);
  }

  @override
  Widget build(BuildContext context) {
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return ListWheelScrollView(
      physics: const FixedExtentScrollPhysics(),
      perspective: 0.01,
      itemExtent: 30,
      diameterRatio: 1.2,
      useMagnifier: true,
      magnification: 1.5,
      onSelectedItemChanged: (index) {
        switch (widget.time) {
          case Time.hour:
            stateNotifier.setTotalSeconds(
                index, stateNotifier.getMinute(), stateNotifier.getSecond());
          case Time.minute:
            stateNotifier.setTotalSeconds(
                stateNotifier.getHour(), index, stateNotifier.getSecond());
          case Time.second:
            stateNotifier.setTotalSeconds(
                stateNotifier.getHour(), stateNotifier.getMinute(), index);
        }
      },
      controller: _controller,
      children: List.generate(
        widget.time == Time.hour ? 24 : 60,
        (index) => Text(
          index.toString().padLeft(2, "0"),
          style: const TextStyle(
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
