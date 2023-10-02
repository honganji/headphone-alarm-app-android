// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateModel {
// For SW
  StopWatchState get swState => throw _privateConstructorUsedError;
  int get totalSWSeconds => throw _privateConstructorUsedError; // For timer
  TimerState get timerState => throw _privateConstructorUsedError;
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;
  int get totalTimerSeconds =>
      throw _privateConstructorUsedError; // For General
  int get index => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError;
  bool get isSW => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateModelCopyWith<StateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateModelCopyWith<$Res> {
  factory $StateModelCopyWith(
          StateModel value, $Res Function(StateModel) then) =
      _$StateModelCopyWithImpl<$Res, StateModel>;
  @useResult
  $Res call(
      {StopWatchState swState,
      int totalSWSeconds,
      TimerState timerState,
      int hour,
      int minute,
      int totalTimerSeconds,
      int index,
      int volume,
      bool isSW});
}

/// @nodoc
class _$StateModelCopyWithImpl<$Res, $Val extends StateModel>
    implements $StateModelCopyWith<$Res> {
  _$StateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swState = null,
    Object? totalSWSeconds = null,
    Object? timerState = null,
    Object? hour = null,
    Object? minute = null,
    Object? totalTimerSeconds = null,
    Object? index = null,
    Object? volume = null,
    Object? isSW = null,
  }) {
    return _then(_value.copyWith(
      swState: null == swState
          ? _value.swState
          : swState // ignore: cast_nullable_to_non_nullable
              as StopWatchState,
      totalSWSeconds: null == totalSWSeconds
          ? _value.totalSWSeconds
          : totalSWSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timerState: null == timerState
          ? _value.timerState
          : timerState // ignore: cast_nullable_to_non_nullable
              as TimerState,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      totalTimerSeconds: null == totalTimerSeconds
          ? _value.totalTimerSeconds
          : totalTimerSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      isSW: null == isSW
          ? _value.isSW
          : isSW // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateModelCopyWith<$Res>
    implements $StateModelCopyWith<$Res> {
  factory _$$_StateModelCopyWith(
          _$_StateModel value, $Res Function(_$_StateModel) then) =
      __$$_StateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StopWatchState swState,
      int totalSWSeconds,
      TimerState timerState,
      int hour,
      int minute,
      int totalTimerSeconds,
      int index,
      int volume,
      bool isSW});
}

/// @nodoc
class __$$_StateModelCopyWithImpl<$Res>
    extends _$StateModelCopyWithImpl<$Res, _$_StateModel>
    implements _$$_StateModelCopyWith<$Res> {
  __$$_StateModelCopyWithImpl(
      _$_StateModel _value, $Res Function(_$_StateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swState = null,
    Object? totalSWSeconds = null,
    Object? timerState = null,
    Object? hour = null,
    Object? minute = null,
    Object? totalTimerSeconds = null,
    Object? index = null,
    Object? volume = null,
    Object? isSW = null,
  }) {
    return _then(_$_StateModel(
      swState: null == swState
          ? _value.swState
          : swState // ignore: cast_nullable_to_non_nullable
              as StopWatchState,
      totalSWSeconds: null == totalSWSeconds
          ? _value.totalSWSeconds
          : totalSWSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timerState: null == timerState
          ? _value.timerState
          : timerState // ignore: cast_nullable_to_non_nullable
              as TimerState,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      totalTimerSeconds: null == totalTimerSeconds
          ? _value.totalTimerSeconds
          : totalTimerSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      isSW: null == isSW
          ? _value.isSW
          : isSW // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StateModel extends _StateModel {
  const _$_StateModel(
      {this.swState = StopWatchState.reset,
      this.totalSWSeconds = 0,
      this.timerState = TimerState.stop,
      this.hour = 0,
      this.minute = 0,
      this.totalTimerSeconds = 0,
      this.index = 0,
      this.volume = 0,
      this.isSW = true})
      : super._();

// For SW
  @override
  @JsonKey()
  final StopWatchState swState;
  @override
  @JsonKey()
  final int totalSWSeconds;
// For timer
  @override
  @JsonKey()
  final TimerState timerState;
  @override
  @JsonKey()
  final int hour;
  @override
  @JsonKey()
  final int minute;
  @override
  @JsonKey()
  final int totalTimerSeconds;
// For General
  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final int volume;
  @override
  @JsonKey()
  final bool isSW;

  @override
  String toString() {
    return 'StateModel(swState: $swState, totalSWSeconds: $totalSWSeconds, timerState: $timerState, hour: $hour, minute: $minute, totalTimerSeconds: $totalTimerSeconds, index: $index, volume: $volume, isSW: $isSW)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateModel &&
            (identical(other.swState, swState) || other.swState == swState) &&
            (identical(other.totalSWSeconds, totalSWSeconds) ||
                other.totalSWSeconds == totalSWSeconds) &&
            (identical(other.timerState, timerState) ||
                other.timerState == timerState) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.totalTimerSeconds, totalTimerSeconds) ||
                other.totalTimerSeconds == totalTimerSeconds) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.isSW, isSW) || other.isSW == isSW));
  }

  @override
  int get hashCode => Object.hash(runtimeType, swState, totalSWSeconds,
      timerState, hour, minute, totalTimerSeconds, index, volume, isSW);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateModelCopyWith<_$_StateModel> get copyWith =>
      __$$_StateModelCopyWithImpl<_$_StateModel>(this, _$identity);
}

abstract class _StateModel extends StateModel {
  const factory _StateModel(
      {final StopWatchState swState,
      final int totalSWSeconds,
      final TimerState timerState,
      final int hour,
      final int minute,
      final int totalTimerSeconds,
      final int index,
      final int volume,
      final bool isSW}) = _$_StateModel;
  const _StateModel._() : super._();

  @override // For SW
  StopWatchState get swState;
  @override
  int get totalSWSeconds;
  @override // For timer
  TimerState get timerState;
  @override
  int get hour;
  @override
  int get minute;
  @override
  int get totalTimerSeconds;
  @override // For General
  int get index;
  @override
  int get volume;
  @override
  bool get isSW;
  @override
  @JsonKey(ignore: true)
  _$$_StateModelCopyWith<_$_StateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
