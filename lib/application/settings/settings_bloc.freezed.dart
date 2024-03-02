// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() musicMute,
    required TResult Function() musicUnmute,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? musicMute,
    TResult? Function()? musicUnmute,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? musicMute,
    TResult Function()? musicUnmute,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicMute value) musicMute,
    required TResult Function(MusicUnmute value) musicUnmute,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MusicMute value)? musicMute,
    TResult? Function(MusicUnmute value)? musicUnmute,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicMute value)? musicMute,
    TResult Function(MusicUnmute value)? musicUnmute,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MusicMuteImplCopyWith<$Res> {
  factory _$$MusicMuteImplCopyWith(
          _$MusicMuteImpl value, $Res Function(_$MusicMuteImpl) then) =
      __$$MusicMuteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MusicMuteImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$MusicMuteImpl>
    implements _$$MusicMuteImplCopyWith<$Res> {
  __$$MusicMuteImplCopyWithImpl(
      _$MusicMuteImpl _value, $Res Function(_$MusicMuteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MusicMuteImpl implements MusicMute {
  const _$MusicMuteImpl();

  @override
  String toString() {
    return 'SettingsEvent.musicMute()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MusicMuteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() musicMute,
    required TResult Function() musicUnmute,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return musicMute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? musicMute,
    TResult? Function()? musicUnmute,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return musicMute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? musicMute,
    TResult Function()? musicUnmute,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (musicMute != null) {
      return musicMute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicMute value) musicMute,
    required TResult Function(MusicUnmute value) musicUnmute,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
  }) {
    return musicMute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MusicMute value)? musicMute,
    TResult? Function(MusicUnmute value)? musicUnmute,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
  }) {
    return musicMute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicMute value)? musicMute,
    TResult Function(MusicUnmute value)? musicUnmute,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (musicMute != null) {
      return musicMute(this);
    }
    return orElse();
  }
}

abstract class MusicMute implements SettingsEvent {
  const factory MusicMute() = _$MusicMuteImpl;
}

/// @nodoc
abstract class _$$MusicUnmuteImplCopyWith<$Res> {
  factory _$$MusicUnmuteImplCopyWith(
          _$MusicUnmuteImpl value, $Res Function(_$MusicUnmuteImpl) then) =
      __$$MusicUnmuteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MusicUnmuteImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$MusicUnmuteImpl>
    implements _$$MusicUnmuteImplCopyWith<$Res> {
  __$$MusicUnmuteImplCopyWithImpl(
      _$MusicUnmuteImpl _value, $Res Function(_$MusicUnmuteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MusicUnmuteImpl implements MusicUnmute {
  const _$MusicUnmuteImpl();

  @override
  String toString() {
    return 'SettingsEvent.musicUnmute()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MusicUnmuteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() musicMute,
    required TResult Function() musicUnmute,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return musicUnmute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? musicMute,
    TResult? Function()? musicUnmute,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return musicUnmute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? musicMute,
    TResult Function()? musicUnmute,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (musicUnmute != null) {
      return musicUnmute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicMute value) musicMute,
    required TResult Function(MusicUnmute value) musicUnmute,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
  }) {
    return musicUnmute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MusicMute value)? musicMute,
    TResult? Function(MusicUnmute value)? musicUnmute,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
  }) {
    return musicUnmute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicMute value)? musicMute,
    TResult Function(MusicUnmute value)? musicUnmute,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (musicUnmute != null) {
      return musicUnmute(this);
    }
    return orElse();
  }
}

abstract class MusicUnmute implements SettingsEvent {
  const factory MusicUnmute() = _$MusicUnmuteImpl;
}

/// @nodoc
abstract class _$$IncrementImplCopyWith<$Res> {
  factory _$$IncrementImplCopyWith(
          _$IncrementImpl value, $Res Function(_$IncrementImpl) then) =
      __$$IncrementImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$IncrementImpl>
    implements _$$IncrementImplCopyWith<$Res> {
  __$$IncrementImplCopyWithImpl(
      _$IncrementImpl _value, $Res Function(_$IncrementImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncrementImpl implements Increment {
  const _$IncrementImpl();

  @override
  String toString() {
    return 'SettingsEvent.increment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() musicMute,
    required TResult Function() musicUnmute,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return increment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? musicMute,
    TResult? Function()? musicUnmute,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return increment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? musicMute,
    TResult Function()? musicUnmute,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicMute value) musicMute,
    required TResult Function(MusicUnmute value) musicUnmute,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MusicMute value)? musicMute,
    TResult? Function(MusicUnmute value)? musicUnmute,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicMute value)? musicMute,
    TResult Function(MusicUnmute value)? musicUnmute,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class Increment implements SettingsEvent {
  const factory Increment() = _$IncrementImpl;
}

/// @nodoc
abstract class _$$DecrementImplCopyWith<$Res> {
  factory _$$DecrementImplCopyWith(
          _$DecrementImpl value, $Res Function(_$DecrementImpl) then) =
      __$$DecrementImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$DecrementImpl>
    implements _$$DecrementImplCopyWith<$Res> {
  __$$DecrementImplCopyWithImpl(
      _$DecrementImpl _value, $Res Function(_$DecrementImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecrementImpl implements Decrement {
  const _$DecrementImpl();

  @override
  String toString() {
    return 'SettingsEvent.decrement()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecrementImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() musicMute,
    required TResult Function() musicUnmute,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return decrement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? musicMute,
    TResult? Function()? musicUnmute,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return decrement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? musicMute,
    TResult Function()? musicUnmute,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicMute value) musicMute,
    required TResult Function(MusicUnmute value) musicUnmute,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MusicMute value)? musicMute,
    TResult? Function(MusicUnmute value)? musicUnmute,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicMute value)? musicMute,
    TResult Function(MusicUnmute value)? musicUnmute,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class Decrement implements SettingsEvent {
  const factory Decrement() = _$DecrementImpl;
}

/// @nodoc
mixin _$SettingsState {
  int get textSize => throw _privateConstructorUsedError;
  bool get isMusicPlaying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({int textSize, bool isMusicPlaying});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSize = null,
    Object? isMusicPlaying = null,
  }) {
    return _then(_value.copyWith(
      textSize: null == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as int,
      isMusicPlaying: null == isMusicPlaying
          ? _value.isMusicPlaying
          : isMusicPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int textSize, bool isMusicPlaying});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSize = null,
    Object? isMusicPlaying = null,
  }) {
    return _then(_$SettingsStateImpl(
      textSize: null == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as int,
      isMusicPlaying: null == isMusicPlaying
          ? _value.isMusicPlaying
          : isMusicPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl(
      {required this.textSize, this.isMusicPlaying = false});

  @override
  final int textSize;
  @override
  @JsonKey()
  final bool isMusicPlaying;

  @override
  String toString() {
    return 'SettingsState(textSize: $textSize, isMusicPlaying: $isMusicPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize) &&
            (identical(other.isMusicPlaying, isMusicPlaying) ||
                other.isMusicPlaying == isMusicPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textSize, isMusicPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final int textSize,
      final bool isMusicPlaying}) = _$SettingsStateImpl;

  @override
  int get textSize;
  @override
  bool get isMusicPlaying;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
