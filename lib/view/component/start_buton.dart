import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({required this.startFun, super.key});
  final void Function() startFun;

  @override
  Widget build(BuildContext context) {
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
              startFun();
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
