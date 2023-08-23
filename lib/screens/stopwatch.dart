import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          ToggleButtons(
            isSelected: [state.isStopwatch, !(state.isStopwatch)],
            color: const Color(0X33000000),
            fillColor: const Color(0X33000000),
            selectedColor: Colors.black,
            onPressed: (int newIndex) => stateNotifier.reverseIsStopwatch(),
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Icon(
                  Icons.timer,
                  size: 40,
                ),
              ),
              const Icon(
                Icons.schedule,
                size: 40,
              ),
            ],
          ),
          const Center(
            child: Text(
              "Stopwatch Screen",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
