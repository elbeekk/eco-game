// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$MusicMuteCopyWith<$Res> {
  factory _$$MusicMuteCopyWith(
          _$MusicMute value, $Res Function(_$MusicMute) then) =
      __$$MusicMuteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MusicMuteCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$MusicMute>
    implements _$$MusicMuteCopyWith<$Res> {
  __$$MusicMuteCopyWithImpl(
      _$MusicMute _value, $Res Function(_$MusicMute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MusicMute implements MusicMute {
  const _$MusicMute();

  @override
  String toString() {
    return 'SettingsEvent.musicMute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MusicMute);
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
  const factory MusicMute() = _$MusicMute;
}

/// @nodoc
abstract class _$$MusicUnmuteCopyWith<$Res> {
  factory _$$MusicUnmuteCopyWith(
          _$MusicUnmute value, $Res Function(_$MusicUnmute) then) =
      __$$MusicUnmuteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MusicUnmuteCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$MusicUnmute>
    implements _$$MusicUnmuteCopyWith<$Res> {
  __$$MusicUnmuteCopyWithImpl(
      _$MusicUnmute _value, $Res Function(_$MusicUnmute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MusicUnmute implements MusicUnmute {
  const _$MusicUnmute();

  @override
  String toString() {
    return 'SettingsEvent.musicUnmute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MusicUnmute);
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
  const factory MusicUnmute() = _$MusicUnmute;
}

/// @nodoc
abstract class _$$IncrementCopyWith<$Res> {
  factory _$$IncrementCopyWith(
          _$Increment value, $Res Function(_$Increment) then) =
      __$$IncrementCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$Increment>
    implements _$$IncrementCopyWith<$Res> {
  __$$IncrementCopyWithImpl(
      _$Increment _value, $Res Function(_$Increment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Increment implements Increment {
  const _$Increment();

  @override
  String toString() {
    return 'SettingsEvent.increment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Increment);
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
  const factory Increment() = _$Increment;
}

/// @nodoc
abstract class _$$DecrementCopyWith<$Res> {
  factory _$$DecrementCopyWith(
          _$Decrement value, $Res Function(_$Decrement) then) =
      __$$DecrementCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$Decrement>
    implements _$$DecrementCopyWith<$Res> {
  __$$DecrementCopyWithImpl(
      _$Decrement _value, $Res Function(_$Decrement) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Decrement implements Decrement {
  const _$Decrement();

  @override
  String toString() {
    return 'SettingsEvent.decrement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Decrement);
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
  const factory Decrement() = _$Decrement;
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
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int textSize, bool isMusicPlaying});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSize = null,
    Object? isMusicPlaying = null,
  }) {
    return _then(_$_SettingsState(
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

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState({required this.textSize, this.isMusicPlaying = false});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
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
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final int textSize,
      final bool isMusicPlaying}) = _$_SettingsState;

  @override
  int get textSize;
  @override
  bool get isMusicPlaying;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
