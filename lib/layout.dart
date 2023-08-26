import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/view/component/switch_button.dart';
import 'package:headphone_alarm_android_app/view_model/state_view_model.dart';

class Layout extends ConsumerWidget {
  const Layout({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stateViewModelProvider);
    final stateNotifier = ref.watch(stateViewModelProvider.notifier);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            SwitchButton(
              isStopwatch: state.isStopwatch,
              reverseFun: stateNotifier.reverseIsStopwatch,
            ),
            Expanded(child: child),
            Container(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              height: height * 0.10,
              child: const Center(
                child: Text(
                  "Ads",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
