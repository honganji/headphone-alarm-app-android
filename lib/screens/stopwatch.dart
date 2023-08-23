import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
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
            isSelected: isSelected,
            color: const Color(0X33000000),
            fillColor: const Color(0X33000000),
            selectedColor: Colors.black,
            onPressed: (int newIndex) {
              setState(() {
                // looping through the list of booleans values
                for (int index = 0; index < isSelected.length; index++) {
                  // checking for the index value
                  if (index == newIndex) {
                    // one button is always set to true
                    isSelected[index] = true;
                  } else {
                    // other two will be set to false and not selected
                    isSelected[index] = false;
                  }
                }
              });
            },
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

class Stopwatch2 extends ConsumerWidget {
  const Stopwatch2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // state
    final _state = ref.watch(stateViewModelProvider);

    // manipulatable state
    final _stateNotifier = ref.watch(stateViewModelProvider.notifier);
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
            isSelected: [_state.isStopwatch, !(_state.isStopwatch)],
            color: const Color(0X33000000),
            fillColor: const Color(0X33000000),
            selectedColor: Colors.black,
            onPressed: (int newIndex) => _stateNotifier.reverseIsStopwatch(),
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
