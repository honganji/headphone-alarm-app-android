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
  late Timer _timerSW;
  late Timer _timerTimer;

  int getSecond() {
    return ((state.totalSWSeconds % 3600).round() % 60).floor();
  }

  int getMinute() {
    return (((state.isSW ? state.totalSWSeconds : state.totalTimerSeconds) %
                    3600)
                .round() /
            60)
        .floor();
  }

  int getHour() {
    return ((state.isSW ? state.totalSWSeconds : state.totalTimerSeconds) /
            3600)
        .round();
  }

  void startSW() {
    _timerSW = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (state.swState == StopWatchState.start && state.totalSWSeconds > 0) {
          setTotalSWSeconds(0, 0, state.totalSWSeconds - 1);
        }
        checkIfSWFinished();
      },
    );
  }

  void startTimer() {
    _timerTimer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (state.isTimerStart2 && state.totalTimerSeconds > 0) {
          state = state.setTotalTimerSeconds(state.totalTimerSeconds - 1);
        }
        checkIfTimerFinished();
      },
    );
  }

  void checkIfSWFinished() {
    if (state.totalSWSeconds == 0) {
      //TODO call alarm function and change swState
      manageSWState(StopWatchState.reset);
      print("The time has come");
      _timerSW.cancel();
    }
  }

  void checkIfTimerFinished() {
    if (state.totalTimerSeconds == 0) {
      //TODO call alarm function and change swState
      manageTimerState(false);
      print("The time has come");
      _timerTimer.cancel();
    }
  }

  void stopSW() {
    if (state.swState == StopWatchState.stop) {
      _timerSW.cancel();
    }
  }

  void stopTimer() {
    if (!state.isTimerStart2) {
      _timerTimer.cancel();
    }
  }

  void setTotalSWSeconds(int hour, int minute, int second) {
    int totalSWSeconds = hour * 3600 + minute * 60 + second;
    state = state.setTotalSWSeconds(totalSWSeconds);
  }

  void setTotalTimerSeconds() {
    int targetTotalTimerSecond = state.hour * 3600 + state.minute * 60;
    DateTime now = DateTime.now();
    int presentHour = now.hour;
    int presentMinute = now.minute;
    int presentSecond = now.second;
    int presentTotalTimerSecond =
        presentHour * 3600 + presentMinute * 60 + presentSecond;
    int totalTimerSecond = targetTotalTimerSecond - presentTotalTimerSecond;
    state = state.setTotalTimerSeconds(totalTimerSecond);
  }

  void manageSWState(StopWatchState swState) {
    state = state.manageSWState(swState);
  }

  void setHour(int hour) {
    state = state.setHour(hour);
  }

  void setMinute(int minute) {
    state = state.setMinute(minute);
  }

  void manageTimerState(bool isTimerStart2) {
    state = state.manageTimerState(isTimerStart2);
  }

  void setSoundIndex(int index) {
    state = state.setVolume(index);
  }

  void setVolume(int volume2) {
    state = state.setVolume(volume2);
  }

  void switchIsSW(bool isSW) {
    state = state.switchIsSW(isSW);
  }
}
