import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class AlarmStopButton extends ConsumerWidget {
  const AlarmStopButton({required this.id, super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    return ElevatedButton(
      onPressed: () async {
        state.isSW
            ? stateNotifier.stopSWAlarm()
            : stateNotifier.stopTimerAlarm();
      },
      child: const Text(
        "Stop Alarm",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
