import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class Timer extends ConsumerWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            context.go("/stopwatch");
          },
          child: const Text("Go to timer screen"),
        ),
        const Center(
          child: Text(
            "Timer Screen",
            style: TextStyle(fontSize: 40),
          ),
        ),
        Text(state.stopwatchHour.toString())
      ],
    );
  }
}
