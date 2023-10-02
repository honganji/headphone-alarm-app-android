import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';
import 'package:headphone_alarm_android_app/enum/time_class.dart';
import 'package:headphone_alarm_android_app/enum/timer_state.dart';
import 'package:headphone_alarm_android_app/model/state_model.dart';

final stateViewModelProvider =
    StateNotifierProvider.autoDispose<StateViewModel, StateModel>(
        (ref) => StateViewModel());

class StateViewModel extends StateNotifier<StateModel> {
  StateViewModel() : super(const StateModel());

  // varaiables for timer instance
  late Timer _timerSW;
  late Timer _timerTimer;

  // For SW
  // get time
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

  int selectTime(Time time) {
    switch (time) {
      case Time.hour:
        return getHour();
      case Time.minute:
        return getMinute();
      case Time.second:
        return getSecond();
    }
  }

  // functions for each stopwatch state
  // you can be sure that the total sw seconds is more than 1
  Future<void> startSW() async {
    // set and start Alarm
    await setSWAlarm();
    // start timer
    _timerSW = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        setTotalSWSeconds(0, 0, state.totalSWSeconds - 1);
        checkIfSWFinished();
        print(state.totalSWSeconds);
      },
    );
    if (state.swState != StopWatchState.ringing) {
      manageSWState(StopWatchState.start);
    }
  }

  Future<void> restartSW() async {
    // set and start Alarm
    await setSWAlarm();
    // start timer
    _timerSW = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        setTotalSWSeconds(0, 0, state.totalSWSeconds - 1);
        checkIfSWFinished();
        print(state.totalSWSeconds);
      },
    );
    if (state.swState != StopWatchState.ringing) {
      manageSWState(StopWatchState.start);
    }
  }

  Future<void> stopSW() async {
    _timerSW.cancel();
    await Alarm.stop(1);
    manageSWState(StopWatchState.stop);
  }

  Future<void> stopSWAlarm() async {
    await Alarm.stop(1);
    manageSWState(StopWatchState.reset);
  }

  Future<void> resetSW() async {
    await Alarm.stop(1);
    manageSWState(StopWatchState.reset);
  }

  void checkIfSWFinished() {
    if (state.totalSWSeconds == 0) {
      manageSWState(StopWatchState.ringing);
      _timerSW.cancel();
      print("Timer is up!");
    }
  }

  void setTotalSWSeconds(int hour, int minute, int second) {
    int totalSWSeconds = hour * 3600 + minute * 60 + second;
    state = state.setTotalSWSeconds(totalSWSeconds);
  }

  void manageSWState(StopWatchState swState) {
    state = state.manageSWState(swState);
  }

  Future<void> setSWAlarm() async {
    await Alarm.init();
    DateTime now = DateTime.now();
    final alarmSettings = AlarmSettings(
      id: 1,
      dateTime: DateTime(
        now.year,
        now.month,
        now.day,
        now.hour + getHour(),
        now.minute + getMinute(),
        now.second + getSecond() + 1,
      ),
      assetAudioPath: 'assets/audio/rain.mp3',
      loopAudio: true,
      vibrate: true,
      volumeMax: false,
      fadeDuration: 1.0,
      enableNotificationOnKill: false,
      stopOnNotificationOpen: false,
      notificationTitle: 'Time is up!',
      notificationBody: 'Push stop button',
    );
    await Alarm.set(alarmSettings: alarmSettings);
  }
  /*--------------------------------------------------------------------*/

  // For Timer
  Future<void> startTimer() async {
    if (state.timerState == TimerState.stop) {
      await setSWAlarm();
    }
    _timerTimer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (state.timerState == TimerState.start &&
            state.totalTimerSeconds > 0) {
          state = state.setTotalTimerSeconds(state.totalTimerSeconds - 1);
        }
      },
    );
    await checkIfTimerFinished();
  }

  Future<void> checkIfTimerFinished() async {
    if (state.totalTimerSeconds == 0) {
      //TODO call alarm function and change swState
      manageTimerState(TimerState.ringing);
      print("The time has come");
      _timerTimer.cancel();
      print(await Alarm.isRinging(1));
      do {
        print("Ring Ring Ring");
      } while ((await Alarm.isRinging(1)));
    }
  }

  void stopTimer() {
    _timerTimer.cancel();
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

  void setHour(int hour) {
    state = state.setHour(hour);
  }

  void setMinute(int minute) {
    state = state.setMinute(minute);
  }

  void manageTimerState(TimerState timerState) {
    state = state.manageTimerState(timerState);
  }

  Future<void> setTimerAlarm() async {
    await Alarm.init();
    DateTime now = DateTime.now();
    final alarmSettings = AlarmSettings(
      id: 2,
      dateTime: DateTime(
        now.year,
        now.month,
        now.day,
        state.hour,
        state.minute,
      ),
      assetAudioPath: 'assets/audio/rain.mp3',
      loopAudio: true,
      vibrate: true,
      volumeMax: false,
      fadeDuration: 1.0,
      notificationTitle: 'The timer is ringing',
      notificationBody: 'Push this popup to stop',
      enableNotificationOnKill: true,
    );
    await Alarm.set(alarmSettings: alarmSettings);
  }

  // For General
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
