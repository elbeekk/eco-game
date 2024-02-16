// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopEvent {
  ShopItemModel get shopItemModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShopItemModel shopItemModel) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShopItemModel shopItemModel)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShopItemModel shopItemModel)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopEventCopyWith<ShopEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res, ShopEvent>;
  @useResult
  $Res call({ShopItemModel shopItemModel});
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res, $Val extends ShopEvent>
    implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopItemModel = null,
  }) {
    return _then(_value.copyWith(
      shopItemModel: null == shopItemModel
          ? _value.shopItemModel
          : shopItemModel // ignore: cast_nullable_to_non_nullable
              as ShopItemModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShopItemModel shopItemModel});
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopItemModel = null,
  }) {
    return _then(_$SelectImpl(
      null == shopItemModel
          ? _value.shopItemModel
          : shopItemModel // ignore: cast_nullable_to_non_nullable
              as ShopItemModel,
    ));
  }
}

/// @nodoc

class _$SelectImpl implements Select {
  const _$SelectImpl(this.shopItemModel);

  @override
  final ShopItemModel shopItemModel;

  @override
  String toString() {
    return 'ShopEvent.select(shopItemModel: $shopItemModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.shopItemModel, shopItemModel) ||
                other.shopItemModel == shopItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShopItemModel shopItemModel) select,
  }) {
    return select(shopItemModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ShopItemModel shopItemModel)? select,
  }) {
    return select?.call(shopItemModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShopItemModel shopItemModel)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(shopItemModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class Select implements ShopEvent {
  const factory Select(final ShopItemModel shopItemModel) = _$SelectImpl;

  @override
  ShopItemModel get shopItemModel;
  @override
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShopState {
  ShopItemModel? get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call({ShopItemModel? selected});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ShopItemModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopStateImplCopyWith<$Res>
    implements $ShopStateCopyWith<$Res> {
  factory _$$ShopStateImplCopyWith(
          _$ShopStateImpl value, $Res Function(_$ShopStateImpl) then) =
      __$$ShopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShopItemModel? selected});
}

/// @nodoc
class __$$ShopStateImplCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$ShopStateImpl>
    implements _$$ShopStateImplCopyWith<$Res> {
  __$$ShopStateImplCopyWithImpl(
      _$ShopStateImpl _value, $Res Function(_$ShopStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$ShopStateImpl(
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ShopItemModel?,
    ));
  }
}

/// @nodoc

class _$ShopStateImpl implements _ShopState {
  const _$ShopStateImpl({this.selected});

  @override
  final ShopItemModel? selected;

  @override
  String toString() {
    return 'ShopState(selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopStateImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      __$$ShopStateImplCopyWithImpl<_$ShopStateImpl>(this, _$identity);
}

abstract class _ShopState implements ShopState {
  const factory _ShopState({final ShopItemModel? selected}) = _$ShopStateImpl;

  @override
  ShopItemModel? get selected;
  @override
  @JsonKey(ignore: true)
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
