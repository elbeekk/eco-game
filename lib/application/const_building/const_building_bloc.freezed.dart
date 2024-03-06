// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'const_building_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConstBuildingEvent {
  DateTime get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime time) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime time)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime time)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConstBuildingEventCopyWith<ConstBuildingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstBuildingEventCopyWith<$Res> {
  factory $ConstBuildingEventCopyWith(
          ConstBuildingEvent value, $Res Function(ConstBuildingEvent) then) =
      _$ConstBuildingEventCopyWithImpl<$Res, ConstBuildingEvent>;
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class _$ConstBuildingEventCopyWithImpl<$Res, $Val extends ConstBuildingEvent>
    implements $ConstBuildingEventCopyWith<$Res> {
  _$ConstBuildingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res>
    implements $ConstBuildingEventCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$ConstBuildingEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$UpdateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements Update {
  const _$UpdateImpl({required this.time});

  @override
  final DateTime time;

  @override
  String toString() {
    return 'ConstBuildingEvent.update(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime time) update,
  }) {
    return update(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime time)? update,
  }) {
    return update?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime time)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements ConstBuildingEvent {
  const factory Update({required final DateTime time}) = _$UpdateImpl;

  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConstBuildingState {
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConstBuildingStateCopyWith<ConstBuildingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstBuildingStateCopyWith<$Res> {
  factory $ConstBuildingStateCopyWith(
          ConstBuildingState value, $Res Function(ConstBuildingState) then) =
      _$ConstBuildingStateCopyWithImpl<$Res, ConstBuildingState>;
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class _$ConstBuildingStateCopyWithImpl<$Res, $Val extends ConstBuildingState>
    implements $ConstBuildingStateCopyWith<$Res> {
  _$ConstBuildingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstBuildingStateImplCopyWith<$Res>
    implements $ConstBuildingStateCopyWith<$Res> {
  factory _$$ConstBuildingStateImplCopyWith(_$ConstBuildingStateImpl value,
          $Res Function(_$ConstBuildingStateImpl) then) =
      __$$ConstBuildingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class __$$ConstBuildingStateImplCopyWithImpl<$Res>
    extends _$ConstBuildingStateCopyWithImpl<$Res, _$ConstBuildingStateImpl>
    implements _$$ConstBuildingStateImplCopyWith<$Res> {
  __$$ConstBuildingStateImplCopyWithImpl(_$ConstBuildingStateImpl _value,
      $Res Function(_$ConstBuildingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$ConstBuildingStateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ConstBuildingStateImpl implements _ConstBuildingState {
  const _$ConstBuildingStateImpl({required this.time});

  @override
  final DateTime time;

  @override
  String toString() {
    return 'ConstBuildingState(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstBuildingStateImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstBuildingStateImplCopyWith<_$ConstBuildingStateImpl> get copyWith =>
      __$$ConstBuildingStateImplCopyWithImpl<_$ConstBuildingStateImpl>(
          this, _$identity);
}

abstract class _ConstBuildingState implements ConstBuildingState {
  const factory _ConstBuildingState({required final DateTime time}) =
      _$ConstBuildingStateImpl;

  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$ConstBuildingStateImplCopyWith<_$ConstBuildingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
