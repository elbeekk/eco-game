// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel shopItemModel) select,
    required TResult Function(ShopCategory category) changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel shopItemModel)? select,
    TResult? Function(ShopCategory category)? changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel shopItemModel)? select,
    TResult Function(ShopCategory category)? changeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Select value) select,
    required TResult Function(ChangeCategory value) changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Select value)? select,
    TResult? Function(ChangeCategory value)? changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Select value)? select,
    TResult Function(ChangeCategory value)? changeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res, ShopEvent>;
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res, $Val extends ShopEvent>
    implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectCopyWith<$Res> {
  factory _$$SelectCopyWith(_$Select value, $Res Function(_$Select) then) =
      __$$SelectCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildingModel shopItemModel});
}

/// @nodoc
class __$$SelectCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$Select>
    implements _$$SelectCopyWith<$Res> {
  __$$SelectCopyWithImpl(_$Select _value, $Res Function(_$Select) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopItemModel = null,
  }) {
    return _then(_$Select(
      null == shopItemModel
          ? _value.shopItemModel
          : shopItemModel // ignore: cast_nullable_to_non_nullable
              as BuildingModel,
    ));
  }
}

/// @nodoc

class _$Select implements Select {
  const _$Select(this.shopItemModel);

  @override
  final BuildingModel shopItemModel;

  @override
  String toString() {
    return 'ShopEvent.select(shopItemModel: $shopItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Select &&
            (identical(other.shopItemModel, shopItemModel) ||
                other.shopItemModel == shopItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCopyWith<_$Select> get copyWith =>
      __$$SelectCopyWithImpl<_$Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel shopItemModel) select,
    required TResult Function(ShopCategory category) changeCategory,
  }) {
    return select(shopItemModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel shopItemModel)? select,
    TResult? Function(ShopCategory category)? changeCategory,
  }) {
    return select?.call(shopItemModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel shopItemModel)? select,
    TResult Function(ShopCategory category)? changeCategory,
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
    required TResult Function(ChangeCategory value) changeCategory,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Select value)? select,
    TResult? Function(ChangeCategory value)? changeCategory,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Select value)? select,
    TResult Function(ChangeCategory value)? changeCategory,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class Select implements ShopEvent {
  const factory Select(final BuildingModel shopItemModel) = _$Select;

  BuildingModel get shopItemModel;
  @JsonKey(ignore: true)
  _$$SelectCopyWith<_$Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryCopyWith<$Res> {
  factory _$$ChangeCategoryCopyWith(
          _$ChangeCategory value, $Res Function(_$ChangeCategory) then) =
      __$$ChangeCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({ShopCategory category});
}

/// @nodoc
class __$$ChangeCategoryCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$ChangeCategory>
    implements _$$ChangeCategoryCopyWith<$Res> {
  __$$ChangeCategoryCopyWithImpl(
      _$ChangeCategory _value, $Res Function(_$ChangeCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$ChangeCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ShopCategory,
    ));
  }
}

/// @nodoc

class _$ChangeCategory implements ChangeCategory {
  const _$ChangeCategory(this.category);

  @override
  final ShopCategory category;

  @override
  String toString() {
    return 'ShopEvent.changeCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryCopyWith<_$ChangeCategory> get copyWith =>
      __$$ChangeCategoryCopyWithImpl<_$ChangeCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel shopItemModel) select,
    required TResult Function(ShopCategory category) changeCategory,
  }) {
    return changeCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel shopItemModel)? select,
    TResult? Function(ShopCategory category)? changeCategory,
  }) {
    return changeCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel shopItemModel)? select,
    TResult Function(ShopCategory category)? changeCategory,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Select value) select,
    required TResult Function(ChangeCategory value) changeCategory,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Select value)? select,
    TResult? Function(ChangeCategory value)? changeCategory,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Select value)? select,
    TResult Function(ChangeCategory value)? changeCategory,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class ChangeCategory implements ShopEvent {
  const factory ChangeCategory(final ShopCategory category) = _$ChangeCategory;

  ShopCategory get category;
  @JsonKey(ignore: true)
  _$$ChangeCategoryCopyWith<_$ChangeCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShopState {
  BuildingModel? get selected => throw _privateConstructorUsedError;
  ShopCategory get category => throw _privateConstructorUsedError;
  dynamic get isBuyLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call(
      {BuildingModel? selected, ShopCategory category, dynamic isBuyLoading});
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
    Object? category = null,
    Object? isBuyLoading = null,
  }) {
    return _then(_value.copyWith(
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as BuildingModel?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ShopCategory,
      isBuyLoading: null == isBuyLoading
          ? _value.isBuyLoading
          : isBuyLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$_ShopStateCopyWith(
          _$_ShopState value, $Res Function(_$_ShopState) then) =
      __$$_ShopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildingModel? selected, ShopCategory category, dynamic isBuyLoading});
}

/// @nodoc
class __$$_ShopStateCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$_ShopState>
    implements _$$_ShopStateCopyWith<$Res> {
  __$$_ShopStateCopyWithImpl(
      _$_ShopState _value, $Res Function(_$_ShopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
    Object? category = null,
    Object? isBuyLoading = null,
  }) {
    return _then(_$_ShopState(
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as BuildingModel?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ShopCategory,
      isBuyLoading: null == isBuyLoading ? _value.isBuyLoading : isBuyLoading,
    ));
  }
}

/// @nodoc

class _$_ShopState implements _ShopState {
  const _$_ShopState(
      {this.selected, required this.category, this.isBuyLoading = false});

  @override
  final BuildingModel? selected;
  @override
  final ShopCategory category;
  @override
  @JsonKey()
  final dynamic isBuyLoading;

  @override
  String toString() {
    return 'ShopState(selected: $selected, category: $category, isBuyLoading: $isBuyLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopState &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other.isBuyLoading, isBuyLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected, category,
      const DeepCollectionEquality().hash(isBuyLoading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      __$$_ShopStateCopyWithImpl<_$_ShopState>(this, _$identity);
}

abstract class _ShopState implements ShopState {
  const factory _ShopState(
      {final BuildingModel? selected,
      required final ShopCategory category,
      final dynamic isBuyLoading}) = _$_ShopState;

  @override
  BuildingModel? get selected;
  @override
  ShopCategory get category;
  @override
  dynamic get isBuyLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}
