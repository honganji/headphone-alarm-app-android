import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';
import 'package:headphone_alarm_android_app/model/state_model.dart';

final stateViewModelProvider =
    StateNotifierProvider.autoDispose<StateViewModel, StateModel>(
        (ref) => StateViewModel());

class StateViewModel extends StateNotifier<StateModel> {
  StateViewModel() : super(const StateModel());

  // Former Methods
  void reverseIsStopwatch() {
    state = state.reverseIsStopwatch();
  }

  void changeStopwatchHour(int num) {
    state = state.changeStopwatchHour(num);
  }

  void changeStopwatchMinute(int num) {
    state = state.changeStopwatchMinute(num);
  }

  void changeStopwatchSecond(int num) {
    state = state.changeStopwatchSecond(num);
  }

  void changeTimerHour(int num) {
    state = state.changeTimerHour(num);
  }

  void changeTimerMinute(int num) {
    state = state.changeTimerMinute(num);
  }

  void changeSoundListIndex(int num) {
    state = state.changeSoundListIndex(num);
  }

  void reverseIsStopwatchStart() {
    state = state.reverseIsStopwatchStart();
  }

  void reverseIsTimerStart() {
    state = state.reverseIsTimerStart();
  }

  // New Methods
  int getSecond() {
    return ((state.totalSeconds % 3600).round() % 60).round();
  }

  int getMinute() {
    return (state.totalSeconds / 3600).round();
  }

  int getHour() {
    return ((state.totalSeconds % 3600).round() / 60).round();
  }

  void manageSW() {
    Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (state.swState == StopWatchState.start) {
          setTotalSeconds(state.totalSeconds + 1);
        } else {
          timer.cancel();
        }
        print(state.swState);
      },
    );
  }

  void setTotalSeconds(int totalSeconds) {
    state.setTotalSeconds(totalSeconds);
  }

  void manageSWState(StopWatchState swState) {
    state.manageSWState(swState);
  }

  void setTimer(int hour, int minute) {
    state.setTimer(hour);
    state.setMinute(minute);
  }

  void manageTimerState(bool isTimerStart2) {
    state.manageTimerState(isTimerStart2);
  }

  void setSoundIndex(int index) {
    state.setVolume(index);
  }

  void setVolume(int volume2) {
    state.setVolume(volume2);
  }

  void switchIsSW(bool isSW) {
    state.switchIsSW(isSW);
  }
}
