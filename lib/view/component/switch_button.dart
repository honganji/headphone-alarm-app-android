import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class SwitchButton extends ConsumerWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return ToggleButtons(
      isSelected: [state.isSW, !state.isSW],
      color: const Color(0X33000000),
      fillColor: const Color(0X33000000),
      selectedColor: Colors.black,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      onPressed: (int newIndex) {
        if (newIndex == 0 && !state.isSW) {
          stateNotifier.switchIsSW(true);
          context.go("/stopwatch");
        } else if (newIndex == 1 && state.isSW) {
          stateNotifier.switchIsSW(false);
          context.go("/timer");
        }
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
