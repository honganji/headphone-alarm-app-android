import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      onPressed: (int newIndex) {
        if (newIndex == 0 && !isStopwatch) {
          reverseFun();
          context.go("/stopwatch");
        } else if (newIndex == 1 && isStopwatch) {
          reverseFun();
          context.go("/timer");
        }
        return;
      },
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
