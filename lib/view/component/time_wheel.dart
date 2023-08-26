import 'package:flutter/material.dart';

class TimeWheel extends StatefulWidget {
  const TimeWheel(
      {required this.changeNumFun,
      required this.isHour,
      required this.currentNum,
      super.key});
  final void Function(int) changeNumFun;
  final bool isHour;
  final int currentNum;

  @override
  State<TimeWheel> createState() => _TimeWheelState();
}

class _TimeWheelState extends State<TimeWheel> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: widget.currentNum);
  }

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      physics: const FixedExtentScrollPhysics(),
      perspective: 0.01,
      itemExtent: 30,
      diameterRatio: 1.2,
      useMagnifier: true,
      magnification: 1.5,
      onSelectedItemChanged: (index) {
        widget.changeNumFun(index);
      },
      controller: _controller,
      children: List.generate(
        widget.isHour ? 24 : 60,
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
