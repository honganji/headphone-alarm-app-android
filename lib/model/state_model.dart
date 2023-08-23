import 'package:freezed_annotation/freezed_annotation.dart';

part "state_model.freezed.dart";

@freezed
class StateModel with _$StateModel {
  const StateModel._();
  const factory StateModel({
    @Default(0) int soundIndex,
    @Default(0) double volume,
    @Default(true) bool isStopwatch,
    @Default(0) int stopwatchHour,
    @Default(0) int stopwatchMinute,
    @Default(0) int stopwatchSecond,
    @Default(0) int timerHour,
    @Default(0) int timerMinute,
  }) = _StateModel;

  StateModel reverseIsStopwatch() => copyWith(isStopwatch: !isStopwatch);
}
