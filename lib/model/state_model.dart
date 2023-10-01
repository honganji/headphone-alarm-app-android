import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';

part "state_model.freezed.dart";

@freezed
class StateModel with _$StateModel {
  const StateModel._();
  const factory StateModel({
    // former methods
    @Default(0) int soundListIndex,
    @Default(0) double volume,
    @Default(true) bool isStopwatch,
    @Default(false) bool isStopwatchStart,
    @Default(false) bool isTimerStart,
    @Default(0) int stopwatchHour,
    @Default(0) int stopwatchMinute,
    @Default(0) int stopwatchSecond,
    @Default(0) int timerHour,
    @Default(0) int timerMinute,

    // new variables
    // For SW
    @Default(StopWatchState.reset) StopWatchState swState,
    @Default(0) int totalSeconds,

    // For timer
    @Default(false) bool isTimerStart2,
    @Default(0) int hours,
    @Default(0) int minutes,

    // For General
    @Default(0) int index,
    @Default(0) int volume2,
    @Default(true) bool isSW,
  }) = _StateModel;

  // former method
  StateModel reverseIsStopwatch() => copyWith(isStopwatch: !isStopwatch);
  StateModel changeStopwatchHour(int num) => copyWith(stopwatchHour: num);
  StateModel changeStopwatchMinute(int num) => copyWith(stopwatchMinute: num);
  StateModel changeStopwatchSecond(int num) => copyWith(stopwatchSecond: num);
  StateModel changeTimerHour(int num) => copyWith(timerHour: num);
  StateModel changeTimerMinute(int num) => copyWith(timerMinute: num);
  StateModel changeSoundListIndex(int index) => copyWith(soundListIndex: index);
  StateModel reverseIsStopwatchStart() =>
      copyWith(isStopwatchStart: !isStopwatchStart);
  StateModel reverseIsTimerStart() => copyWith(isTimerStart: !isTimerStart);

  // new method
  StateModel setTotalSeconds(int totalSeconds) =>
      copyWith(totalSeconds: totalSeconds);

  StateModel manageSWState(StopWatchState swState) =>
      copyWith(swState: swState);

  StateModel setTimer(int hour) => copyWith(hours: hour);

  StateModel setMinute(int minute) => copyWith(minutes: minute);

  StateModel manageTimerState(bool isTimerStart2) =>
      copyWith(isTimerStart2: isTimerStart2);

  StateModel setSoundIndex(int index) => copyWith(index: index);
  StateModel setVolume(int volume2) => copyWith(volume2: volume2);
  StateModel switchIsSW(bool isSW) => copyWith(isSW: isSW);
}
