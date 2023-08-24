import 'package:flutter/material.dart';

class TimeBlock extends StatefulWidget {
  const TimeBlock(
      {required this.isHour,
      required this.currentNum,
      required this.changeNumFun,
      super.key});
  final bool isHour;
  final int currentNum;
  final void Function(int) changeNumFun;

  @override
  State<TimeBlock> createState() => _TimeBlock2State();
}

class _TimeBlock2State extends State<TimeBlock> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: widget.currentNum);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      height: height * 0.17,
      width: width * 0.21,
      decoration: BoxDecoration(
        color: const Color(0xFFDEDEDE).withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListWheelScrollView(
        physics: const FixedExtentScrollPhysics(),
        perspective: 0.01,
        itemExtent: width * 0.07,
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
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
