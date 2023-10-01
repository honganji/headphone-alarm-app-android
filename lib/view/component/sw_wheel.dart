import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class SWWheel extends ConsumerStatefulWidget {
  const SWWheel({required this.time, required this.initialNum, super.key});
  final Time time;
  final int initialNum;

  @override
  ConsumerState<SWWheel> createState() => _SWWheelState();
}

class _SWWheelState extends ConsumerState<SWWheel> {
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
            stateNotifier.setTotalSWSeconds(
                index, stateNotifier.getMinute(), stateNotifier.getSecond());
          case Time.minute:
            stateNotifier.setTotalSWSeconds(
                stateNotifier.getHour(), index, stateNotifier.getSecond());
          case Time.second:
            stateNotifier.setTotalSWSeconds(
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
