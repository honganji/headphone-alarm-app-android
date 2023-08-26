import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headphone_alarm_android_app/model/state_model.dart';

final stateViewModelProvider =
    StateNotifierProvider.autoDispose<StateViewModel, StateModel>(
        (ref) => StateViewModel());

class StateViewModel extends StateNotifier<StateModel> {
  StateViewModel() : super(const StateModel());

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
}
