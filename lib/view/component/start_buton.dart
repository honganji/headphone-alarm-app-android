import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class StartButton extends ConsumerWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
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
              if (state.totalSeconds == 0) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Set the time"),
                ));
                return;
              }
              if (state.swState == StopWatchState.start) {
                stateNotifier.manageSWState(StopWatchState.stop);
                stateNotifier.stopSW();
              } else {
                stateNotifier.manageSWState(StopWatchState.start);
                stateNotifier.startSW();
              }
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(230, 90),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
            child: Text(
              state.swState == StopWatchState.start ? "Stop" : "Start",
              style: const TextStyle(
                  fontSize: 40, letterSpacing: 3.0, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
