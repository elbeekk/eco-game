// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$ShowMenuCopyWith<$Res> {
  factory _$$ShowMenuCopyWith(
          _$ShowMenu value, $Res Function(_$ShowMenu) then) =
      __$$ShowMenuCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowMenuCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowMenu>
    implements _$$ShowMenuCopyWith<$Res> {
  __$$ShowMenuCopyWithImpl(_$ShowMenu _value, $Res Function(_$ShowMenu) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowMenu implements ShowMenu {
  const _$ShowMenu();

  @override
  String toString() {
    return 'GameEvent.showMenu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowMenu);
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
  const factory ShowMenu() = _$ShowMenu;
}

/// @nodoc
abstract class _$$ShowShopCopyWith<$Res> {
  factory _$$ShowShopCopyWith(
          _$ShowShop value, $Res Function(_$ShowShop) then) =
      __$$ShowShopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowShopCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowShop>
    implements _$$ShowShopCopyWith<$Res> {
  __$$ShowShopCopyWithImpl(_$ShowShop _value, $Res Function(_$ShowShop) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowShop implements ShowShop {
  const _$ShowShop();

  @override
  String toString() {
    return 'GameEvent.showShop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowShop);
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
  const factory ShowShop() = _$ShowShop;
}

/// @nodoc
abstract class _$$ShowMoneyCopyWith<$Res> {
  factory _$$ShowMoneyCopyWith(
          _$ShowMoney value, $Res Function(_$ShowMoney) then) =
      __$$ShowMoneyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowMoneyCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowMoney>
    implements _$$ShowMoneyCopyWith<$Res> {
  __$$ShowMoneyCopyWithImpl(
      _$ShowMoney _value, $Res Function(_$ShowMoney) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowMoney implements ShowMoney {
  const _$ShowMoney();

  @override
  String toString() {
    return 'GameEvent.showMoney()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowMoney);
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
  const factory ShowMoney() = _$ShowMoney;
}

/// @nodoc
abstract class _$$ShowSettingsCopyWith<$Res> {
  factory _$$ShowSettingsCopyWith(
          _$ShowSettings value, $Res Function(_$ShowSettings) then) =
      __$$ShowSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowSettingsCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ShowSettings>
    implements _$$ShowSettingsCopyWith<$Res> {
  __$$ShowSettingsCopyWithImpl(
      _$ShowSettings _value, $Res Function(_$ShowSettings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowSettings implements ShowSettings {
  const _$ShowSettings();

  @override
  String toString() {
    return 'GameEvent.showSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowSettings);
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
  const factory ShowSettings() = _$ShowSettings;
}

/// @nodoc
abstract class _$$CloseAllCopyWith<$Res> {
  factory _$$CloseAllCopyWith(
          _$CloseAll value, $Res Function(_$CloseAll) then) =
      __$$CloseAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseAllCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$CloseAll>
    implements _$$CloseAllCopyWith<$Res> {
  __$$CloseAllCopyWithImpl(_$CloseAll _value, $Res Function(_$CloseAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseAll implements CloseAll {
  const _$CloseAll();

  @override
  String toString() {
    return 'GameEvent.closeAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseAll);
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
  const factory CloseAll() = _$CloseAll;
}

/// @nodoc
abstract class _$$ChangeCurrentPosCopyWith<$Res> {
  factory _$$ChangeCurrentPosCopyWith(
          _$ChangeCurrentPos value, $Res Function(_$ChangeCurrentPos) then) =
      __$$ChangeCurrentPosCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset pos});
}

/// @nodoc
class __$$ChangeCurrentPosCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ChangeCurrentPos>
    implements _$$ChangeCurrentPosCopyWith<$Res> {
  __$$ChangeCurrentPosCopyWithImpl(
      _$ChangeCurrentPos _value, $Res Function(_$ChangeCurrentPos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
  }) {
    return _then(_$ChangeCurrentPos(
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$ChangeCurrentPos implements ChangeCurrentPos {
  const _$ChangeCurrentPos({required this.pos});

  @override
  final Offset pos;

  @override
  String toString() {
    return 'GameEvent.changeCurrentPos(pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurrentPos &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurrentPosCopyWith<_$ChangeCurrentPos> get copyWith =>
      __$$ChangeCurrentPosCopyWithImpl<_$ChangeCurrentPos>(this, _$identity);

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
      _$ChangeCurrentPos;

  Offset get pos;
  @JsonKey(ignore: true)
  _$$ChangeCurrentPosCopyWith<_$ChangeCurrentPos> get copyWith =>
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
abstract class _$$_GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$_GameStateCopyWith(
          _$_GameState value, $Res Function(_$_GameState) then) =
      __$$_GameStateCopyWithImpl<$Res>;
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
class __$$_GameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_GameState>
    implements _$$_GameStateCopyWith<$Res> {
  __$$_GameStateCopyWithImpl(
      _$_GameState _value, $Res Function(_$_GameState) _then)
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
    return _then(_$_GameState(
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

class _$_GameState implements _GameState {
  const _$_GameState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameState &&
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
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      __$$_GameStateCopyWithImpl<_$_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final bool menuOpen,
      final bool shopOpen,
      final bool moneyOpen,
      final bool settingsOpen,
      required final Offset currentPos}) = _$_GameState;

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
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      throw _privateConstructorUsedError;
}
