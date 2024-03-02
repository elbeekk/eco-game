// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMenu,
    required TResult Function() showShop,
    required TResult Function() showMoney,
    required TResult Function() showSettings,
    required TResult Function() closeAll,
    required TResult Function(Offset pos) changeCurrentPos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showMenu,
    TResult? Function()? showShop,
    TResult? Function()? showMoney,
    TResult? Function()? showSettings,
    TResult? Function()? closeAll,
    TResult? Function(Offset pos)? changeCurrentPos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMenu,
    TResult Function()? showShop,
    TResult Function()? showMoney,
    TResult Function()? showSettings,
    TResult Function()? closeAll,
    TResult Function(Offset pos)? changeCurrentPos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMenu value) showMenu,
    required TResult Function(ShowShop value) showShop,
    required TResult Function(ShowMoney value) showMoney,
    required TResult Function(ShowSettings value) showSettings,
    required TResult Function(CloseAll value) closeAll,
    required TResult Function(ChangeCurrentPos value) changeCurrentPos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowMenu value)? showMenu,
    TResult? Function(ShowShop value)? showShop,
    TResult? Function(ShowMoney value)? showMoney,
    TResult? Function(ShowSettings value)? showSettings,
    TResult? Function(CloseAll value)? closeAll,
    TResult? Function(ChangeCurrentPos value)? changeCurrentPos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMenu value)? showMenu,
    TResult Function(ShowShop value)? showShop,
    TResult Function(ShowMoney value)? showMoney,
    TResult Function(ShowSettings value)? showSettings,
    TResult Function(CloseAll value)? closeAll,
    TResult Function(ChangeCurrentPos value)? changeCurrentPos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowMenuImplCopyWith<$Res> {
  factory _$$ShowMenuImplCopyWith(
          _$ShowMenuImpl value, $Res Function(_$ShowMenuImpl) then) =
      __$$ShowMenuImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowMenuImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowMenuImpl>
    implements _$$ShowMenuImplCopyWith<$Res> {
  __$$ShowMenuImplCopyWithImpl(
      _$ShowMenuImpl _value, $Res Function(_$ShowMenuImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowMenuImpl implements ShowMenu {
  const _$ShowMenuImpl();

  @override
  String toString() {
    return 'GameEvent.showMenu()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowMenuImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMenu,
    required TResult Function() showShop,
    required TResult Function() showMoney,
    required TResult Function() showSettings,
    required TResult Function() closeAll,
    required TResult Function(Offset pos) changeCurrentPos,
  }) {
    return showMenu();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showMenu,
    TResult? Function()? showShop,
    TResult? Function()? showMoney,
    TResult? Function()? showSettings,
    TResult? Function()? closeAll,
    TResult? Function(Offset pos)? changeCurrentPos,
  }) {
    return showMenu?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMenu,
    TResult Function()? showShop,
    TResult Function()? showMoney,
    TResult Function()? showSettings,
    TResult Function()? closeAll,
    TResult Function(Offset pos)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showMenu != null) {
      return showMenu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMenu value) showMenu,
    required TResult Function(ShowShop value) showShop,
    required TResult Function(ShowMoney value) showMoney,
    required TResult Function(ShowSettings value) showSettings,
    required TResult Function(CloseAll value) closeAll,
    required TResult Function(ChangeCurrentPos value) changeCurrentPos,
  }) {
    return showMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowMenu value)? showMenu,
    TResult? Function(ShowShop value)? showShop,
    TResult? Function(ShowMoney value)? showMoney,
    TResult? Function(ShowSettings value)? showSettings,
    TResult? Function(CloseAll value)? closeAll,
    TResult? Function(ChangeCurrentPos value)? changeCurrentPos,
  }) {
    return showMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMenu value)? showMenu,
    TResult Function(ShowShop value)? showShop,
    TResult Function(ShowMoney value)? showMoney,
    TResult Function(ShowSettings value)? showSettings,
    TResult Function(CloseAll value)? closeAll,
    TResult Function(ChangeCurrentPos value)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showMenu != null) {
      return showMenu(this);
    }
    return orElse();
  }
}

abstract class ShowMenu implements GameEvent {
  const factory ShowMenu() = _$ShowMenuImpl;
}

/// @nodoc
abstract class _$$ShowShopImplCopyWith<$Res> {
  factory _$$ShowShopImplCopyWith(
          _$ShowShopImpl value, $Res Function(_$ShowShopImpl) then) =
      __$$ShowShopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowShopImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowShopImpl>
    implements _$$ShowShopImplCopyWith<$Res> {
  __$$ShowShopImplCopyWithImpl(
      _$ShowShopImpl _value, $Res Function(_$ShowShopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowShopImpl implements ShowShop {
  const _$ShowShopImpl();

  @override
  String toString() {
    return 'GameEvent.showShop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowShopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMenu,
    required TResult Function() showShop,
    required TResult Function() showMoney,
    required TResult Function() showSettings,
    required TResult Function() closeAll,
    required TResult Function(Offset pos) changeCurrentPos,
  }) {
    return showShop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showMenu,
    TResult? Function()? showShop,
    TResult? Function()? showMoney,
    TResult? Function()? showSettings,
    TResult? Function()? closeAll,
    TResult? Function(Offset pos)? changeCurrentPos,
  }) {
    return showShop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMenu,
    TResult Function()? showShop,
    TResult Function()? showMoney,
    TResult Function()? showSettings,
    TResult Function()? closeAll,
    TResult Function(Offset pos)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showShop != null) {
      return showShop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMenu value) showMenu,
    required TResult Function(ShowShop value) showShop,
    required TResult Function(ShowMoney value) showMoney,
    required TResult Function(ShowSettings value) showSettings,
    required TResult Function(CloseAll value) closeAll,
    required TResult Function(ChangeCurrentPos value) changeCurrentPos,
  }) {
    return showShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowMenu value)? showMenu,
    TResult? Function(ShowShop value)? showShop,
    TResult? Function(ShowMoney value)? showMoney,
    TResult? Function(ShowSettings value)? showSettings,
    TResult? Function(CloseAll value)? closeAll,
    TResult? Function(ChangeCurrentPos value)? changeCurrentPos,
  }) {
    return showShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMenu value)? showMenu,
    TResult Function(ShowShop value)? showShop,
    TResult Function(ShowMoney value)? showMoney,
    TResult Function(ShowSettings value)? showSettings,
    TResult Function(CloseAll value)? closeAll,
    TResult Function(ChangeCurrentPos value)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showShop != null) {
      return showShop(this);
    }
    return orElse();
  }
}

abstract class ShowShop implements GameEvent {
  const factory ShowShop() = _$ShowShopImpl;
}

/// @nodoc
abstract class _$$ShowMoneyImplCopyWith<$Res> {
  factory _$$ShowMoneyImplCopyWith(
          _$ShowMoneyImpl value, $Res Function(_$ShowMoneyImpl) then) =
      __$$ShowMoneyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowMoneyImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowMoneyImpl>
    implements _$$ShowMoneyImplCopyWith<$Res> {
  __$$ShowMoneyImplCopyWithImpl(
      _$ShowMoneyImpl _value, $Res Function(_$ShowMoneyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowMoneyImpl implements ShowMoney {
  const _$ShowMoneyImpl();

  @override
  String toString() {
    return 'GameEvent.showMoney()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowMoneyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMenu,
    required TResult Function() showShop,
    required TResult Function() showMoney,
    required TResult Function() showSettings,
    required TResult Function() closeAll,
    required TResult Function(Offset pos) changeCurrentPos,
  }) {
    return showMoney();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showMenu,
    TResult? Function()? showShop,
    TResult? Function()? showMoney,
    TResult? Function()? showSettings,
    TResult? Function()? closeAll,
    TResult? Function(Offset pos)? changeCurrentPos,
  }) {
    return showMoney?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMenu,
    TResult Function()? showShop,
    TResult Function()? showMoney,
    TResult Function()? showSettings,
    TResult Function()? closeAll,
    TResult Function(Offset pos)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showMoney != null) {
      return showMoney();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMenu value) showMenu,
    required TResult Function(ShowShop value) showShop,
    required TResult Function(ShowMoney value) showMoney,
    required TResult Function(ShowSettings value) showSettings,
    required TResult Function(CloseAll value) closeAll,
    required TResult Function(ChangeCurrentPos value) changeCurrentPos,
  }) {
    return showMoney(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowMenu value)? showMenu,
    TResult? Function(ShowShop value)? showShop,
    TResult? Function(ShowMoney value)? showMoney,
    TResult? Function(ShowSettings value)? showSettings,
    TResult? Function(CloseAll value)? closeAll,
    TResult? Function(ChangeCurrentPos value)? changeCurrentPos,
  }) {
    return showMoney?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMenu value)? showMenu,
    TResult Function(ShowShop value)? showShop,
    TResult Function(ShowMoney value)? showMoney,
    TResult Function(ShowSettings value)? showSettings,
    TResult Function(CloseAll value)? closeAll,
    TResult Function(ChangeCurrentPos value)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showMoney != null) {
      return showMoney(this);
    }
    return orElse();
  }
}

abstract class ShowMoney implements GameEvent {
  const factory ShowMoney() = _$ShowMoneyImpl;
}

/// @nodoc
abstract class _$$ShowSettingsImplCopyWith<$Res> {
  factory _$$ShowSettingsImplCopyWith(
          _$ShowSettingsImpl value, $Res Function(_$ShowSettingsImpl) then) =
      __$$ShowSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowSettingsImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowSettingsImpl>
    implements _$$ShowSettingsImplCopyWith<$Res> {
  __$$ShowSettingsImplCopyWithImpl(
      _$ShowSettingsImpl _value, $Res Function(_$ShowSettingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowSettingsImpl implements ShowSettings {
  const _$ShowSettingsImpl();

  @override
  String toString() {
    return 'GameEvent.showSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMenu,
    required TResult Function() showShop,
    required TResult Function() showMoney,
    required TResult Function() showSettings,
    required TResult Function() closeAll,
    required TResult Function(Offset pos) changeCurrentPos,
  }) {
    return showSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showMenu,
    TResult? Function()? showShop,
    TResult? Function()? showMoney,
    TResult? Function()? showSettings,
    TResult? Function()? closeAll,
    TResult? Function(Offset pos)? changeCurrentPos,
  }) {
    return showSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMenu,
    TResult Function()? showShop,
    TResult Function()? showMoney,
    TResult Function()? showSettings,
    TResult Function()? closeAll,
    TResult Function(Offset pos)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showSettings != null) {
      return showSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMenu value) showMenu,
    required TResult Function(ShowShop value) showShop,
    required TResult Function(ShowMoney value) showMoney,
    required TResult Function(ShowSettings value) showSettings,
    required TResult Function(CloseAll value) closeAll,
    required TResult Function(ChangeCurrentPos value) changeCurrentPos,
  }) {
    return showSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowMenu value)? showMenu,
    TResult? Function(ShowShop value)? showShop,
    TResult? Function(ShowMoney value)? showMoney,
    TResult? Function(ShowSettings value)? showSettings,
    TResult? Function(CloseAll value)? closeAll,
    TResult? Function(ChangeCurrentPos value)? changeCurrentPos,
  }) {
    return showSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMenu value)? showMenu,
    TResult Function(ShowShop value)? showShop,
    TResult Function(ShowMoney value)? showMoney,
    TResult Function(ShowSettings value)? showSettings,
    TResult Function(CloseAll value)? closeAll,
    TResult Function(ChangeCurrentPos value)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (showSettings != null) {
      return showSettings(this);
    }
    return orElse();
  }
}

abstract class ShowSettings implements GameEvent {
  const factory ShowSettings() = _$ShowSettingsImpl;
}

/// @nodoc
abstract class _$$CloseAllImplCopyWith<$Res> {
  factory _$$CloseAllImplCopyWith(
          _$CloseAllImpl value, $Res Function(_$CloseAllImpl) then) =
      __$$CloseAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseAllImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$CloseAllImpl>
    implements _$$CloseAllImplCopyWith<$Res> {
  __$$CloseAllImplCopyWithImpl(
      _$CloseAllImpl _value, $Res Function(_$CloseAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseAllImpl implements CloseAll {
  const _$CloseAllImpl();

  @override
  String toString() {
    return 'GameEvent.closeAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMenu,
    required TResult Function() showShop,
    required TResult Function() showMoney,
    required TResult Function() showSettings,
    required TResult Function() closeAll,
    required TResult Function(Offset pos) changeCurrentPos,
  }) {
    return closeAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showMenu,
    TResult? Function()? showShop,
    TResult? Function()? showMoney,
    TResult? Function()? showSettings,
    TResult? Function()? closeAll,
    TResult? Function(Offset pos)? changeCurrentPos,
  }) {
    return closeAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMenu,
    TResult Function()? showShop,
    TResult Function()? showMoney,
    TResult Function()? showSettings,
    TResult Function()? closeAll,
    TResult Function(Offset pos)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (closeAll != null) {
      return closeAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMenu value) showMenu,
    required TResult Function(ShowShop value) showShop,
    required TResult Function(ShowMoney value) showMoney,
    required TResult Function(ShowSettings value) showSettings,
    required TResult Function(CloseAll value) closeAll,
    required TResult Function(ChangeCurrentPos value) changeCurrentPos,
  }) {
    return closeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowMenu value)? showMenu,
    TResult? Function(ShowShop value)? showShop,
    TResult? Function(ShowMoney value)? showMoney,
    TResult? Function(ShowSettings value)? showSettings,
    TResult? Function(CloseAll value)? closeAll,
    TResult? Function(ChangeCurrentPos value)? changeCurrentPos,
  }) {
    return closeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMenu value)? showMenu,
    TResult Function(ShowShop value)? showShop,
    TResult Function(ShowMoney value)? showMoney,
    TResult Function(ShowSettings value)? showSettings,
    TResult Function(CloseAll value)? closeAll,
    TResult Function(ChangeCurrentPos value)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (closeAll != null) {
      return closeAll(this);
    }
    return orElse();
  }
}

abstract class CloseAll implements GameEvent {
  const factory CloseAll() = _$CloseAllImpl;
}

/// @nodoc
abstract class _$$ChangeCurrentPosImplCopyWith<$Res> {
  factory _$$ChangeCurrentPosImplCopyWith(_$ChangeCurrentPosImpl value,
          $Res Function(_$ChangeCurrentPosImpl) then) =
      __$$ChangeCurrentPosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset pos});
}

/// @nodoc
class __$$ChangeCurrentPosImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ChangeCurrentPosImpl>
    implements _$$ChangeCurrentPosImplCopyWith<$Res> {
  __$$ChangeCurrentPosImplCopyWithImpl(_$ChangeCurrentPosImpl _value,
      $Res Function(_$ChangeCurrentPosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
  }) {
    return _then(_$ChangeCurrentPosImpl(
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$ChangeCurrentPosImpl implements ChangeCurrentPos {
  const _$ChangeCurrentPosImpl({required this.pos});

  @override
  final Offset pos;

  @override
  String toString() {
    return 'GameEvent.changeCurrentPos(pos: $pos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurrentPosImpl &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurrentPosImplCopyWith<_$ChangeCurrentPosImpl> get copyWith =>
      __$$ChangeCurrentPosImplCopyWithImpl<_$ChangeCurrentPosImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMenu,
    required TResult Function() showShop,
    required TResult Function() showMoney,
    required TResult Function() showSettings,
    required TResult Function() closeAll,
    required TResult Function(Offset pos) changeCurrentPos,
  }) {
    return changeCurrentPos(pos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showMenu,
    TResult? Function()? showShop,
    TResult? Function()? showMoney,
    TResult? Function()? showSettings,
    TResult? Function()? closeAll,
    TResult? Function(Offset pos)? changeCurrentPos,
  }) {
    return changeCurrentPos?.call(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMenu,
    TResult Function()? showShop,
    TResult Function()? showMoney,
    TResult Function()? showSettings,
    TResult Function()? closeAll,
    TResult Function(Offset pos)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (changeCurrentPos != null) {
      return changeCurrentPos(pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMenu value) showMenu,
    required TResult Function(ShowShop value) showShop,
    required TResult Function(ShowMoney value) showMoney,
    required TResult Function(ShowSettings value) showSettings,
    required TResult Function(CloseAll value) closeAll,
    required TResult Function(ChangeCurrentPos value) changeCurrentPos,
  }) {
    return changeCurrentPos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowMenu value)? showMenu,
    TResult? Function(ShowShop value)? showShop,
    TResult? Function(ShowMoney value)? showMoney,
    TResult? Function(ShowSettings value)? showSettings,
    TResult? Function(CloseAll value)? closeAll,
    TResult? Function(ChangeCurrentPos value)? changeCurrentPos,
  }) {
    return changeCurrentPos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMenu value)? showMenu,
    TResult Function(ShowShop value)? showShop,
    TResult Function(ShowMoney value)? showMoney,
    TResult Function(ShowSettings value)? showSettings,
    TResult Function(CloseAll value)? closeAll,
    TResult Function(ChangeCurrentPos value)? changeCurrentPos,
    required TResult orElse(),
  }) {
    if (changeCurrentPos != null) {
      return changeCurrentPos(this);
    }
    return orElse();
  }
}

abstract class ChangeCurrentPos implements GameEvent {
  const factory ChangeCurrentPos({required final Offset pos}) =
      _$ChangeCurrentPosImpl;

  Offset get pos;
  @JsonKey(ignore: true)
  _$$ChangeCurrentPosImplCopyWith<_$ChangeCurrentPosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameState {
  bool get menuOpen => throw _privateConstructorUsedError;
  bool get shopOpen => throw _privateConstructorUsedError;
  bool get moneyOpen => throw _privateConstructorUsedError;
  bool get settingsOpen => throw _privateConstructorUsedError;
  Offset get currentPos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {bool menuOpen,
      bool shopOpen,
      bool moneyOpen,
      bool settingsOpen,
      Offset currentPos});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuOpen = null,
    Object? shopOpen = null,
    Object? moneyOpen = null,
    Object? settingsOpen = null,
    Object? currentPos = null,
  }) {
    return _then(_value.copyWith(
      menuOpen: null == menuOpen
          ? _value.menuOpen
          : menuOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      shopOpen: null == shopOpen
          ? _value.shopOpen
          : shopOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      moneyOpen: null == moneyOpen
          ? _value.moneyOpen
          : moneyOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsOpen: null == settingsOpen
          ? _value.settingsOpen
          : settingsOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPos: null == currentPos
          ? _value.currentPos
          : currentPos // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool menuOpen,
      bool shopOpen,
      bool moneyOpen,
      bool settingsOpen,
      Offset currentPos});
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuOpen = null,
    Object? shopOpen = null,
    Object? moneyOpen = null,
    Object? settingsOpen = null,
    Object? currentPos = null,
  }) {
    return _then(_$GameStateImpl(
      menuOpen: null == menuOpen
          ? _value.menuOpen
          : menuOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      shopOpen: null == shopOpen
          ? _value.shopOpen
          : shopOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      moneyOpen: null == moneyOpen
          ? _value.moneyOpen
          : moneyOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsOpen: null == settingsOpen
          ? _value.settingsOpen
          : settingsOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPos: null == currentPos
          ? _value.currentPos
          : currentPos // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {this.menuOpen = false,
      this.shopOpen = false,
      this.moneyOpen = false,
      this.settingsOpen = false,
      required this.currentPos});

  @override
  @JsonKey()
  final bool menuOpen;
  @override
  @JsonKey()
  final bool shopOpen;
  @override
  @JsonKey()
  final bool moneyOpen;
  @override
  @JsonKey()
  final bool settingsOpen;
  @override
  final Offset currentPos;

  @override
  String toString() {
    return 'GameState(menuOpen: $menuOpen, shopOpen: $shopOpen, moneyOpen: $moneyOpen, settingsOpen: $settingsOpen, currentPos: $currentPos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.menuOpen, menuOpen) ||
                other.menuOpen == menuOpen) &&
            (identical(other.shopOpen, shopOpen) ||
                other.shopOpen == shopOpen) &&
            (identical(other.moneyOpen, moneyOpen) ||
                other.moneyOpen == moneyOpen) &&
            (identical(other.settingsOpen, settingsOpen) ||
                other.settingsOpen == settingsOpen) &&
            (identical(other.currentPos, currentPos) ||
                other.currentPos == currentPos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, menuOpen, shopOpen, moneyOpen, settingsOpen, currentPos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final bool menuOpen,
      final bool shopOpen,
      final bool moneyOpen,
      final bool settingsOpen,
      required final Offset currentPos}) = _$GameStateImpl;

  @override
  bool get menuOpen;
  @override
  bool get shopOpen;
  @override
  bool get moneyOpen;
  @override
  bool get settingsOpen;
  @override
  Offset get currentPos;
  @override
  @JsonKey(ignore: true)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
