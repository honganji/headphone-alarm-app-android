import 'package:freezed_annotation/freezed_annotation.dart';

part "state_model.freezed.dart";

@freezed
class StateModel with _$StateModel {
  const StateModel._();
  const factory StateModel({
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
  }) = _StateModel;

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
}
