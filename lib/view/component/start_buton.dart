import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class StartButton extends ConsumerWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1356D8),
              Color(0x993E5581),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              stateNotifier.reverseIsTimerStart();
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(230, 90),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
            child: const Text(
              "Start",
              style: TextStyle(
                  fontSize: 40, letterSpacing: 3.0, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
