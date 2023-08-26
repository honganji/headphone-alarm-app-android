import 'package:flutter/material.dart';
import 'package:headphone_alarm_android_app/view/component/time_wheel.dart';

class TimeBlock extends StatelessWidget {
  const TimeBlock(
      {required this.isHour,
      required this.isStart,
      required this.currentNum,
      required this.changeNumFun,
      super.key});
  final bool isHour;
  final bool isStart;
  final int currentNum;
  final void Function(int) changeNumFun;

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
      child: isStart
          ? TimeWheel(
              changeNumFun: changeNumFun,
              isHour: isHour,
              currentNum: currentNum,
            )
          : Text(
              currentNum.toString().padLeft(2, "0"),
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
    );
  }
}
