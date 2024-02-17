// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'building_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuildingEvent {
  BuildingInfoModel get buildingInfoModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingInfoModel buildingInfoModel)
        addNewBuilding,
    required TResult Function(BuildingInfoModel buildingInfoModel)
        addOldBuilding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingInfoModel buildingInfoModel)? addNewBuilding,
    TResult? Function(BuildingInfoModel buildingInfoModel)? addOldBuilding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingInfoModel buildingInfoModel)? addNewBuilding,
    TResult Function(BuildingInfoModel buildingInfoModel)? addOldBuilding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(AddOldBuilding value) addOldBuilding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(AddOldBuilding value)? addOldBuilding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(AddOldBuilding value)? addOldBuilding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuildingEventCopyWith<BuildingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingEventCopyWith<$Res> {
  factory $BuildingEventCopyWith(
          BuildingEvent value, $Res Function(BuildingEvent) then) =
      _$BuildingEventCopyWithImpl<$Res, BuildingEvent>;
  @useResult
  $Res call({BuildingInfoModel buildingInfoModel});
}

/// @nodoc
class _$BuildingEventCopyWithImpl<$Res, $Val extends BuildingEvent>
    implements $BuildingEventCopyWith<$Res> {
  _$BuildingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingInfoModel = null,
  }) {
    return _then(_value.copyWith(
      buildingInfoModel: null == buildingInfoModel
          ? _value.buildingInfoModel
          : buildingInfoModel // ignore: cast_nullable_to_non_nullable
              as BuildingInfoModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNewBuildingImplCopyWith<$Res>
    implements $BuildingEventCopyWith<$Res> {
  factory _$$AddNewBuildingImplCopyWith(_$AddNewBuildingImpl value,
          $Res Function(_$AddNewBuildingImpl) then) =
      __$$AddNewBuildingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildingInfoModel buildingInfoModel});
}

/// @nodoc
class __$$AddNewBuildingImplCopyWithImpl<$Res>
    extends _$BuildingEventCopyWithImpl<$Res, _$AddNewBuildingImpl>
    implements _$$AddNewBuildingImplCopyWith<$Res> {
  __$$AddNewBuildingImplCopyWithImpl(
      _$AddNewBuildingImpl _value, $Res Function(_$AddNewBuildingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingInfoModel = null,
  }) {
    return _then(_$AddNewBuildingImpl(
      null == buildingInfoModel
          ? _value.buildingInfoModel
          : buildingInfoModel // ignore: cast_nullable_to_non_nullable
              as BuildingInfoModel,
    ));
  }
}

/// @nodoc

class _$AddNewBuildingImpl implements AddNewBuilding {
  const _$AddNewBuildingImpl(this.buildingInfoModel);

  @override
  final BuildingInfoModel buildingInfoModel;

  @override
  String toString() {
    return 'BuildingEvent.addNewBuilding(buildingInfoModel: $buildingInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewBuildingImpl &&
            (identical(other.buildingInfoModel, buildingInfoModel) ||
                other.buildingInfoModel == buildingInfoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildingInfoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewBuildingImplCopyWith<_$AddNewBuildingImpl> get copyWith =>
      __$$AddNewBuildingImplCopyWithImpl<_$AddNewBuildingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingInfoModel buildingInfoModel)
        addNewBuilding,
    required TResult Function(BuildingInfoModel buildingInfoModel)
        addOldBuilding,
  }) {
    return addNewBuilding(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingInfoModel buildingInfoModel)? addNewBuilding,
    TResult? Function(BuildingInfoModel buildingInfoModel)? addOldBuilding,
  }) {
    return addNewBuilding?.call(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingInfoModel buildingInfoModel)? addNewBuilding,
    TResult Function(BuildingInfoModel buildingInfoModel)? addOldBuilding,
    required TResult orElse(),
  }) {
    if (addNewBuilding != null) {
      return addNewBuilding(buildingInfoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(AddOldBuilding value) addOldBuilding,
  }) {
    return addNewBuilding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(AddOldBuilding value)? addOldBuilding,
  }) {
    return addNewBuilding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(AddOldBuilding value)? addOldBuilding,
    required TResult orElse(),
  }) {
    if (addNewBuilding != null) {
      return addNewBuilding(this);
    }
    return orElse();
  }
}

abstract class AddNewBuilding implements BuildingEvent {
  const factory AddNewBuilding(final BuildingInfoModel buildingInfoModel) =
      _$AddNewBuildingImpl;

  @override
  BuildingInfoModel get buildingInfoModel;
  @override
  @JsonKey(ignore: true)
  _$$AddNewBuildingImplCopyWith<_$AddNewBuildingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOldBuildingImplCopyWith<$Res>
    implements $BuildingEventCopyWith<$Res> {
  factory _$$AddOldBuildingImplCopyWith(_$AddOldBuildingImpl value,
          $Res Function(_$AddOldBuildingImpl) then) =
      __$$AddOldBuildingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildingInfoModel buildingInfoModel});
}

/// @nodoc
class __$$AddOldBuildingImplCopyWithImpl<$Res>
    extends _$BuildingEventCopyWithImpl<$Res, _$AddOldBuildingImpl>
    implements _$$AddOldBuildingImplCopyWith<$Res> {
  __$$AddOldBuildingImplCopyWithImpl(
      _$AddOldBuildingImpl _value, $Res Function(_$AddOldBuildingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingInfoModel = null,
  }) {
    return _then(_$AddOldBuildingImpl(
      null == buildingInfoModel
          ? _value.buildingInfoModel
          : buildingInfoModel // ignore: cast_nullable_to_non_nullable
              as BuildingInfoModel,
    ));
  }
}

/// @nodoc

class _$AddOldBuildingImpl implements AddOldBuilding {
  const _$AddOldBuildingImpl(this.buildingInfoModel);

  @override
  final BuildingInfoModel buildingInfoModel;

  @override
  String toString() {
    return 'BuildingEvent.addOldBuilding(buildingInfoModel: $buildingInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOldBuildingImpl &&
            (identical(other.buildingInfoModel, buildingInfoModel) ||
                other.buildingInfoModel == buildingInfoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildingInfoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOldBuildingImplCopyWith<_$AddOldBuildingImpl> get copyWith =>
      __$$AddOldBuildingImplCopyWithImpl<_$AddOldBuildingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingInfoModel buildingInfoModel)
        addNewBuilding,
    required TResult Function(BuildingInfoModel buildingInfoModel)
        addOldBuilding,
  }) {
    return addOldBuilding(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingInfoModel buildingInfoModel)? addNewBuilding,
    TResult? Function(BuildingInfoModel buildingInfoModel)? addOldBuilding,
  }) {
    return addOldBuilding?.call(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingInfoModel buildingInfoModel)? addNewBuilding,
    TResult Function(BuildingInfoModel buildingInfoModel)? addOldBuilding,
    required TResult orElse(),
  }) {
    if (addOldBuilding != null) {
      return addOldBuilding(buildingInfoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(AddOldBuilding value) addOldBuilding,
  }) {
    return addOldBuilding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(AddOldBuilding value)? addOldBuilding,
  }) {
    return addOldBuilding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(AddOldBuilding value)? addOldBuilding,
    required TResult orElse(),
  }) {
    if (addOldBuilding != null) {
      return addOldBuilding(this);
    }
    return orElse();
  }
}

abstract class AddOldBuilding implements BuildingEvent {
  const factory AddOldBuilding(final BuildingInfoModel buildingInfoModel) =
      _$AddOldBuildingImpl;

  @override
  BuildingInfoModel get buildingInfoModel;
  @override
  @JsonKey(ignore: true)
  _$$AddOldBuildingImplCopyWith<_$AddOldBuildingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BuildingState {
  List<BuildingInfoModel> get newBuildings =>
      throw _privateConstructorUsedError;
  List<BuildingInfoModel> get oldBuildings =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuildingStateCopyWith<BuildingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingStateCopyWith<$Res> {
  factory $BuildingStateCopyWith(
          BuildingState value, $Res Function(BuildingState) then) =
      _$BuildingStateCopyWithImpl<$Res, BuildingState>;
  @useResult
  $Res call(
      {List<BuildingInfoModel> newBuildings,
      List<BuildingInfoModel> oldBuildings});
}

/// @nodoc
class _$BuildingStateCopyWithImpl<$Res, $Val extends BuildingState>
    implements $BuildingStateCopyWith<$Res> {
  _$BuildingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newBuildings = null,
    Object? oldBuildings = null,
  }) {
    return _then(_value.copyWith(
      newBuildings: null == newBuildings
          ? _value.newBuildings
          : newBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingInfoModel>,
      oldBuildings: null == oldBuildings
          ? _value.oldBuildings
          : oldBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuildingStateImplCopyWith<$Res>
    implements $BuildingStateCopyWith<$Res> {
  factory _$$BuildingStateImplCopyWith(
          _$BuildingStateImpl value, $Res Function(_$BuildingStateImpl) then) =
      __$$BuildingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BuildingInfoModel> newBuildings,
      List<BuildingInfoModel> oldBuildings});
}

/// @nodoc
class __$$BuildingStateImplCopyWithImpl<$Res>
    extends _$BuildingStateCopyWithImpl<$Res, _$BuildingStateImpl>
    implements _$$BuildingStateImplCopyWith<$Res> {
  __$$BuildingStateImplCopyWithImpl(
      _$BuildingStateImpl _value, $Res Function(_$BuildingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newBuildings = null,
    Object? oldBuildings = null,
  }) {
    return _then(_$BuildingStateImpl(
      newBuildings: null == newBuildings
          ? _value._newBuildings
          : newBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingInfoModel>,
      oldBuildings: null == oldBuildings
          ? _value._oldBuildings
          : oldBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingInfoModel>,
    ));
  }
}

/// @nodoc

class _$BuildingStateImpl implements _BuildingState {
  const _$BuildingStateImpl(
      {final List<BuildingInfoModel> newBuildings = const [],
      final List<BuildingInfoModel> oldBuildings = const []})
      : _newBuildings = newBuildings,
        _oldBuildings = oldBuildings;

  final List<BuildingInfoModel> _newBuildings;
  @override
  @JsonKey()
  List<BuildingInfoModel> get newBuildings {
    if (_newBuildings is EqualUnmodifiableListView) return _newBuildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newBuildings);
  }

  final List<BuildingInfoModel> _oldBuildings;
  @override
  @JsonKey()
  List<BuildingInfoModel> get oldBuildings {
    if (_oldBuildings is EqualUnmodifiableListView) return _oldBuildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldBuildings);
  }

  @override
  String toString() {
    return 'BuildingState(newBuildings: $newBuildings, oldBuildings: $oldBuildings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._newBuildings, _newBuildings) &&
            const DeepCollectionEquality()
                .equals(other._oldBuildings, _oldBuildings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newBuildings),
      const DeepCollectionEquality().hash(_oldBuildings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildingStateImplCopyWith<_$BuildingStateImpl> get copyWith =>
      __$$BuildingStateImplCopyWithImpl<_$BuildingStateImpl>(this, _$identity);
}

abstract class _BuildingState implements BuildingState {
  const factory _BuildingState(
      {final List<BuildingInfoModel> newBuildings,
      final List<BuildingInfoModel> oldBuildings}) = _$BuildingStateImpl;

  @override
  List<BuildingInfoModel> get newBuildings;
  @override
  List<BuildingInfoModel> get oldBuildings;
  @override
  @JsonKey(ignore: true)
  _$$BuildingStateImplCopyWith<_$BuildingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
