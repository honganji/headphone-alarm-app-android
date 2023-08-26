import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:headphone_alarm_android_app/view/component/sound.dart';
import 'package:headphone_alarm_android_app/view/component/switch_button.dart';
import 'package:headphone_alarm_android_app/view/component/time.dart';
import 'package:headphone_alarm_android_app/view/component/volume.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class Stopwatch extends ConsumerWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xBF34DAFF),
            Color(0xFF9B3CE0),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          SwitchButton(
            isStopwatch: state.isStopwatch,
            reverseFun: stateNotifier.reverseIsStopwatch,
          ),
          const StopwatchTime(),
          const Sound(itemTitle: "Sound"),
          const Volume(itemTitle: "Volume"),
          const SizedBox(
            height: 200,
          ),
          const Center(
            child: Text(
              "Stopwatch Screen",
              style: TextStyle(fontSize: 40),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.go("/timer");
            },
            child: const Text("Go to timer screen"),
          ),
        ],
      ),
    );
  }
}
