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
// former methods
  int get soundListIndex => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  bool get isStopwatch => throw _privateConstructorUsedError;
  bool get isStopwatchStart => throw _privateConstructorUsedError;
  bool get isTimerStart => throw _privateConstructorUsedError;
  int get stopwatchHour => throw _privateConstructorUsedError;
  int get stopwatchMinute => throw _privateConstructorUsedError;
  int get stopwatchSecond => throw _privateConstructorUsedError;
  int get timerHour => throw _privateConstructorUsedError;
  int get timerMinute => throw _privateConstructorUsedError; // new variables
// For SW
  StopWatchState get swState => throw _privateConstructorUsedError;
  int get totalSWSeconds => throw _privateConstructorUsedError; // For timer
  bool get isTimerStart2 => throw _privateConstructorUsedError;
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;
  int get totalTimerSeconds =>
      throw _privateConstructorUsedError; // For General
  int get index => throw _privateConstructorUsedError;
  int get volume2 => throw _privateConstructorUsedError;
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
      {int soundListIndex,
      double volume,
      bool isStopwatch,
      bool isStopwatchStart,
      bool isTimerStart,
      int stopwatchHour,
      int stopwatchMinute,
      int stopwatchSecond,
      int timerHour,
      int timerMinute,
      StopWatchState swState,
      int totalSWSeconds,
      bool isTimerStart2,
      int hour,
      int minute,
      int totalTimerSeconds,
      int index,
      int volume2,
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
    Object? soundListIndex = null,
    Object? volume = null,
    Object? isStopwatch = null,
    Object? isStopwatchStart = null,
    Object? isTimerStart = null,
    Object? stopwatchHour = null,
    Object? stopwatchMinute = null,
    Object? stopwatchSecond = null,
    Object? timerHour = null,
    Object? timerMinute = null,
    Object? swState = null,
    Object? totalSWSeconds = null,
    Object? isTimerStart2 = null,
    Object? hour = null,
    Object? minute = null,
    Object? totalTimerSeconds = null,
    Object? index = null,
    Object? volume2 = null,
    Object? isSW = null,
  }) {
    return _then(_value.copyWith(
      soundListIndex: null == soundListIndex
          ? _value.soundListIndex
          : soundListIndex // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      isStopwatch: null == isStopwatch
          ? _value.isStopwatch
          : isStopwatch // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopwatchStart: null == isStopwatchStart
          ? _value.isStopwatchStart
          : isStopwatchStart // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimerStart: null == isTimerStart
          ? _value.isTimerStart
          : isTimerStart // ignore: cast_nullable_to_non_nullable
              as bool,
      stopwatchHour: null == stopwatchHour
          ? _value.stopwatchHour
          : stopwatchHour // ignore: cast_nullable_to_non_nullable
              as int,
      stopwatchMinute: null == stopwatchMinute
          ? _value.stopwatchMinute
          : stopwatchMinute // ignore: cast_nullable_to_non_nullable
              as int,
      stopwatchSecond: null == stopwatchSecond
          ? _value.stopwatchSecond
          : stopwatchSecond // ignore: cast_nullable_to_non_nullable
              as int,
      timerHour: null == timerHour
          ? _value.timerHour
          : timerHour // ignore: cast_nullable_to_non_nullable
              as int,
      timerMinute: null == timerMinute
          ? _value.timerMinute
          : timerMinute // ignore: cast_nullable_to_non_nullable
              as int,
      swState: null == swState
          ? _value.swState
          : swState // ignore: cast_nullable_to_non_nullable
              as StopWatchState,
      totalSWSeconds: null == totalSWSeconds
          ? _value.totalSWSeconds
          : totalSWSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isTimerStart2: null == isTimerStart2
          ? _value.isTimerStart2
          : isTimerStart2 // ignore: cast_nullable_to_non_nullable
              as bool,
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
      volume2: null == volume2
          ? _value.volume2
          : volume2 // ignore: cast_nullable_to_non_nullable
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
      {int soundListIndex,
      double volume,
      bool isStopwatch,
      bool isStopwatchStart,
      bool isTimerStart,
      int stopwatchHour,
      int stopwatchMinute,
      int stopwatchSecond,
      int timerHour,
      int timerMinute,
      StopWatchState swState,
      int totalSWSeconds,
      bool isTimerStart2,
      int hour,
      int minute,
      int totalTimerSeconds,
      int index,
      int volume2,
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
    Object? soundListIndex = null,
    Object? volume = null,
    Object? isStopwatch = null,
    Object? isStopwatchStart = null,
    Object? isTimerStart = null,
    Object? stopwatchHour = null,
    Object? stopwatchMinute = null,
    Object? stopwatchSecond = null,
    Object? timerHour = null,
    Object? timerMinute = null,
    Object? swState = null,
    Object? totalSWSeconds = null,
    Object? isTimerStart2 = null,
    Object? hour = null,
    Object? minute = null,
    Object? totalTimerSeconds = null,
    Object? index = null,
    Object? volume2 = null,
    Object? isSW = null,
  }) {
    return _then(_$_StateModel(
      soundListIndex: null == soundListIndex
          ? _value.soundListIndex
          : soundListIndex // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      isStopwatch: null == isStopwatch
          ? _value.isStopwatch
          : isStopwatch // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopwatchStart: null == isStopwatchStart
          ? _value.isStopwatchStart
          : isStopwatchStart // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimerStart: null == isTimerStart
          ? _value.isTimerStart
          : isTimerStart // ignore: cast_nullable_to_non_nullable
              as bool,
      stopwatchHour: null == stopwatchHour
          ? _value.stopwatchHour
          : stopwatchHour // ignore: cast_nullable_to_non_nullable
              as int,
      stopwatchMinute: null == stopwatchMinute
          ? _value.stopwatchMinute
          : stopwatchMinute // ignore: cast_nullable_to_non_nullable
              as int,
      stopwatchSecond: null == stopwatchSecond
          ? _value.stopwatchSecond
          : stopwatchSecond // ignore: cast_nullable_to_non_nullable
              as int,
      timerHour: null == timerHour
          ? _value.timerHour
          : timerHour // ignore: cast_nullable_to_non_nullable
              as int,
      timerMinute: null == timerMinute
          ? _value.timerMinute
          : timerMinute // ignore: cast_nullable_to_non_nullable
              as int,
      swState: null == swState
          ? _value.swState
          : swState // ignore: cast_nullable_to_non_nullable
              as StopWatchState,
      totalSWSeconds: null == totalSWSeconds
          ? _value.totalSWSeconds
          : totalSWSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isTimerStart2: null == isTimerStart2
          ? _value.isTimerStart2
          : isTimerStart2 // ignore: cast_nullable_to_non_nullable
              as bool,
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
      volume2: null == volume2
          ? _value.volume2
          : volume2 // ignore: cast_nullable_to_non_nullable
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
      {this.soundListIndex = 0,
      this.volume = 0,
      this.isStopwatch = true,
      this.isStopwatchStart = false,
      this.isTimerStart = false,
      this.stopwatchHour = 0,
      this.stopwatchMinute = 0,
      this.stopwatchSecond = 0,
      this.timerHour = 0,
      this.timerMinute = 0,
      this.swState = StopWatchState.reset,
      this.totalSWSeconds = 0,
      this.isTimerStart2 = false,
      this.hour = 0,
      this.minute = 0,
      this.totalTimerSeconds = 0,
      this.index = 0,
      this.volume2 = 0,
      this.isSW = true})
      : super._();

// former methods
  @override
  @JsonKey()
  final int soundListIndex;
  @override
  @JsonKey()
  final double volume;
  @override
  @JsonKey()
  final bool isStopwatch;
  @override
  @JsonKey()
  final bool isStopwatchStart;
  @override
  @JsonKey()
  final bool isTimerStart;
  @override
  @JsonKey()
  final int stopwatchHour;
  @override
  @JsonKey()
  final int stopwatchMinute;
  @override
  @JsonKey()
  final int stopwatchSecond;
  @override
  @JsonKey()
  final int timerHour;
  @override
  @JsonKey()
  final int timerMinute;
// new variables
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
  final bool isTimerStart2;
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
  final int volume2;
  @override
  @JsonKey()
  final bool isSW;

  @override
  String toString() {
    return 'StateModel(soundListIndex: $soundListIndex, volume: $volume, isStopwatch: $isStopwatch, isStopwatchStart: $isStopwatchStart, isTimerStart: $isTimerStart, stopwatchHour: $stopwatchHour, stopwatchMinute: $stopwatchMinute, stopwatchSecond: $stopwatchSecond, timerHour: $timerHour, timerMinute: $timerMinute, swState: $swState, totalSWSeconds: $totalSWSeconds, isTimerStart2: $isTimerStart2, hour: $hour, minute: $minute, totalTimerSeconds: $totalTimerSeconds, index: $index, volume2: $volume2, isSW: $isSW)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateModel &&
            (identical(other.soundListIndex, soundListIndex) ||
                other.soundListIndex == soundListIndex) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.isStopwatch, isStopwatch) ||
                other.isStopwatch == isStopwatch) &&
            (identical(other.isStopwatchStart, isStopwatchStart) ||
                other.isStopwatchStart == isStopwatchStart) &&
            (identical(other.isTimerStart, isTimerStart) ||
                other.isTimerStart == isTimerStart) &&
            (identical(other.stopwatchHour, stopwatchHour) ||
                other.stopwatchHour == stopwatchHour) &&
            (identical(other.stopwatchMinute, stopwatchMinute) ||
                other.stopwatchMinute == stopwatchMinute) &&
            (identical(other.stopwatchSecond, stopwatchSecond) ||
                other.stopwatchSecond == stopwatchSecond) &&
            (identical(other.timerHour, timerHour) ||
                other.timerHour == timerHour) &&
            (identical(other.timerMinute, timerMinute) ||
                other.timerMinute == timerMinute) &&
            (identical(other.swState, swState) || other.swState == swState) &&
            (identical(other.totalSWSeconds, totalSWSeconds) ||
                other.totalSWSeconds == totalSWSeconds) &&
            (identical(other.isTimerStart2, isTimerStart2) ||
                other.isTimerStart2 == isTimerStart2) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.totalTimerSeconds, totalTimerSeconds) ||
                other.totalTimerSeconds == totalTimerSeconds) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.volume2, volume2) || other.volume2 == volume2) &&
            (identical(other.isSW, isSW) || other.isSW == isSW));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        soundListIndex,
        volume,
        isStopwatch,
        isStopwatchStart,
        isTimerStart,
        stopwatchHour,
        stopwatchMinute,
        stopwatchSecond,
        timerHour,
        timerMinute,
        swState,
        totalSWSeconds,
        isTimerStart2,
        hour,
        minute,
        totalTimerSeconds,
        index,
        volume2,
        isSW
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateModelCopyWith<_$_StateModel> get copyWith =>
      __$$_StateModelCopyWithImpl<_$_StateModel>(this, _$identity);
}

abstract class _StateModel extends StateModel {
  const factory _StateModel(
      {final int soundListIndex,
      final double volume,
      final bool isStopwatch,
      final bool isStopwatchStart,
      final bool isTimerStart,
      final int stopwatchHour,
      final int stopwatchMinute,
      final int stopwatchSecond,
      final int timerHour,
      final int timerMinute,
      final StopWatchState swState,
      final int totalSWSeconds,
      final bool isTimerStart2,
      final int hour,
      final int minute,
      final int totalTimerSeconds,
      final int index,
      final int volume2,
      final bool isSW}) = _$_StateModel;
  const _StateModel._() : super._();

  @override // former methods
  int get soundListIndex;
  @override
  double get volume;
  @override
  bool get isStopwatch;
  @override
  bool get isStopwatchStart;
  @override
  bool get isTimerStart;
  @override
  int get stopwatchHour;
  @override
  int get stopwatchMinute;
  @override
  int get stopwatchSecond;
  @override
  int get timerHour;
  @override
  int get timerMinute;
  @override // new variables
// For SW
  StopWatchState get swState;
  @override
  int get totalSWSeconds;
  @override // For timer
  bool get isTimerStart2;
  @override
  int get hour;
  @override
  int get minute;
  @override
  int get totalTimerSeconds;
  @override // For General
  int get index;
  @override
  int get volume2;
  @override
  bool get isSW;
  @override
  @JsonKey(ignore: true)
  _$$_StateModelCopyWith<_$_StateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
