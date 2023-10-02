import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:headphone_alarm_android_app/enum/stopwatch_state.dart';
import 'package:headphone_alarm_android_app/enum/timer_state.dart';

part "state_model.freezed.dart";

@freezed
class StateModel with _$StateModel {
  const StateModel._();
  const factory StateModel({
    /// Properties
    // For SW
    @Default(StopWatchState.reset) StopWatchState swState,
    @Default(0) int totalSWSeconds,

    // For timer
    @Default(TimerState.stop) TimerState timerState,
    @Default(0) int hour,
    @Default(0) int minute,
    @Default(0) int totalTimerSeconds,

    // For General
    @Default(0) int index,
    @Default(0) int volume,
    @Default(true) bool isSW,
  }) = _StateModel;

  /// Methods
  // For SW
  StateModel setTotalSWSeconds(int totalSWSeconds) =>
      copyWith(totalSWSeconds: totalSWSeconds);

  StateModel manageSWState(StopWatchState swState) =>
      copyWith(swState: swState);

  // For Timer
  StateModel setTotalTimerSeconds(int totalTimerSeconds) =>
      copyWith(totalTimerSeconds: totalTimerSeconds);

  StateModel setHour(int hour) => copyWith(hour: hour);

  StateModel setMinute(int minute) => copyWith(minute: minute);

  StateModel manageTimerState(TimerState timerState) =>
      copyWith(timerState: timerState);

  // For General
  StateModel setSoundIndex(int index) => copyWith(index: index);
  StateModel setVolume(int volume) => copyWith(volume: volume);
  StateModel switchIsSW(bool isSW) => copyWith(isSW: isSW);
}
