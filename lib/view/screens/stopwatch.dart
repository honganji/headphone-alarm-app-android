import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:headphone_alarm_android_app/view/component/sound.dart';
import 'package:headphone_alarm_android_app/view/component/time.dart';
import 'package:headphone_alarm_android_app/view/component/volume.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
    );
  }
}
