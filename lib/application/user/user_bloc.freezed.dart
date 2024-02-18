// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  int get coins => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int coins) addCoins,
    required TResult Function(int coins) removeCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int coins)? addCoins,
    TResult? Function(int coins)? removeCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int coins)? addCoins,
    TResult Function(int coins)? removeCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCoins value) addCoins,
    required TResult Function(RemoveCoins value) removeCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCoins value)? addCoins,
    TResult? Function(RemoveCoins value)? removeCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCoins value)? addCoins,
    TResult Function(RemoveCoins value)? removeCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
  @useResult
  $Res call({int coins});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCoinsImplCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$AddCoinsImplCopyWith(
          _$AddCoinsImpl value, $Res Function(_$AddCoinsImpl) then) =
      __$$AddCoinsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int coins});
}

/// @nodoc
class __$$AddCoinsImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddCoinsImpl>
    implements _$$AddCoinsImplCopyWith<$Res> {
  __$$AddCoinsImplCopyWithImpl(
      _$AddCoinsImpl _value, $Res Function(_$AddCoinsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$AddCoinsImpl(
      null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddCoinsImpl implements AddCoins {
  const _$AddCoinsImpl(this.coins);

  @override
  final int coins;

  @override
  String toString() {
    return 'UserEvent.addCoins(coins: $coins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCoinsImpl &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCoinsImplCopyWith<_$AddCoinsImpl> get copyWith =>
      __$$AddCoinsImplCopyWithImpl<_$AddCoinsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int coins) addCoins,
    required TResult Function(int coins) removeCoins,
  }) {
    return addCoins(coins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int coins)? addCoins,
    TResult? Function(int coins)? removeCoins,
  }) {
    return addCoins?.call(coins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int coins)? addCoins,
    TResult Function(int coins)? removeCoins,
    required TResult orElse(),
  }) {
    if (addCoins != null) {
      return addCoins(coins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCoins value) addCoins,
    required TResult Function(RemoveCoins value) removeCoins,
  }) {
    return addCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCoins value)? addCoins,
    TResult? Function(RemoveCoins value)? removeCoins,
  }) {
    return addCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCoins value)? addCoins,
    TResult Function(RemoveCoins value)? removeCoins,
    required TResult orElse(),
  }) {
    if (addCoins != null) {
      return addCoins(this);
    }
    return orElse();
  }
}

abstract class AddCoins implements UserEvent {
  const factory AddCoins(final int coins) = _$AddCoinsImpl;

  @override
  int get coins;
  @override
  @JsonKey(ignore: true)
  _$$AddCoinsImplCopyWith<_$AddCoinsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCoinsImplCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$RemoveCoinsImplCopyWith(
          _$RemoveCoinsImpl value, $Res Function(_$RemoveCoinsImpl) then) =
      __$$RemoveCoinsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int coins});
}

/// @nodoc
class __$$RemoveCoinsImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RemoveCoinsImpl>
    implements _$$RemoveCoinsImplCopyWith<$Res> {
  __$$RemoveCoinsImplCopyWithImpl(
      _$RemoveCoinsImpl _value, $Res Function(_$RemoveCoinsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$RemoveCoinsImpl(
      null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveCoinsImpl implements RemoveCoins {
  const _$RemoveCoinsImpl(this.coins);

  @override
  final int coins;

  @override
  String toString() {
    return 'UserEvent.removeCoins(coins: $coins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCoinsImpl &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCoinsImplCopyWith<_$RemoveCoinsImpl> get copyWith =>
      __$$RemoveCoinsImplCopyWithImpl<_$RemoveCoinsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int coins) addCoins,
    required TResult Function(int coins) removeCoins,
  }) {
    return removeCoins(coins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int coins)? addCoins,
    TResult? Function(int coins)? removeCoins,
  }) {
    return removeCoins?.call(coins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int coins)? addCoins,
    TResult Function(int coins)? removeCoins,
    required TResult orElse(),
  }) {
    if (removeCoins != null) {
      return removeCoins(coins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCoins value) addCoins,
    required TResult Function(RemoveCoins value) removeCoins,
  }) {
    return removeCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCoins value)? addCoins,
    TResult? Function(RemoveCoins value)? removeCoins,
  }) {
    return removeCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCoins value)? addCoins,
    TResult Function(RemoveCoins value)? removeCoins,
    required TResult orElse(),
  }) {
    if (removeCoins != null) {
      return removeCoins(this);
    }
    return orElse();
  }
}

abstract class RemoveCoins implements UserEvent {
  const factory RemoveCoins(final int coins) = _$RemoveCoinsImpl;

  @override
  int get coins;
  @override
  @JsonKey(ignore: true)
  _$$RemoveCoinsImplCopyWith<_$RemoveCoinsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  int get coins => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({int coins, String email, String firstName, String lastName});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int coins, String email, String firstName, String lastName});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$UserStateImpl(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.coins = 0,
      this.email = "",
      this.firstName = "",
      this.lastName = ""});

  @override
  @JsonKey()
  final int coins;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;

  @override
  String toString() {
    return 'UserState(coins: $coins, email: $email, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, coins, email, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final int coins,
      final String email,
      final String firstName,
      final String lastName}) = _$UserStateImpl;

  @override
  int get coins;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
