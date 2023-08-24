import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton(
      {required this.isStopwatch, required this.reverseFun, super.key});
  final bool isStopwatch;
  final void Function() reverseFun;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: [isStopwatch, !isStopwatch],
      color: const Color(0X33000000),
      fillColor: const Color(0X33000000),
      selectedColor: Colors.black,
      onPressed: (int newIndex) => reverseFun(),
      children: const [
        Icon(
          Icons.timer,
          size: 55,
        ),
        Icon(
          Icons.schedule,
          size: 55,
        ),
      ],
    );
  }
}
