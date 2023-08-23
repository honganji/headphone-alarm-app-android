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
}