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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)
        addNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel)
        removeNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel) startBuilding,
    required TResult Function(String name, String date, double x, double y)
        changePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult? Function(String name, String date, double x, double y)?
        changePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult Function(String name, String date, double x, double y)?
        changePosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(RemoveNewBuilding value) removeNewBuilding,
    required TResult Function(StartBuilding value) startBuilding,
    required TResult Function(ChangePosition value) changePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult? Function(StartBuilding value)? startBuilding,
    TResult? Function(ChangePosition value)? changePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult Function(StartBuilding value)? startBuilding,
    TResult Function(ChangePosition value)? changePosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingEventCopyWith<$Res> {
  factory $BuildingEventCopyWith(
          BuildingEvent value, $Res Function(BuildingEvent) then) =
      _$BuildingEventCopyWithImpl<$Res, BuildingEvent>;
}

/// @nodoc
class _$BuildingEventCopyWithImpl<$Res, $Val extends BuildingEvent>
    implements $BuildingEventCopyWith<$Res> {
  _$BuildingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddNewBuildingImplCopyWith<$Res> {
  factory _$$AddNewBuildingImplCopyWith(_$AddNewBuildingImpl value,
          $Res Function(_$AddNewBuildingImpl) then) =
      __$$AddNewBuildingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildingModel buildingInfoModel,
      dynamic Function(String) onError,
      Function onSuccess});
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
    Object? onError = null,
    Object? onSuccess = null,
  }) {
    return _then(_$AddNewBuildingImpl(
      buildingInfoModel: null == buildingInfoModel
          ? _value.buildingInfoModel
          : buildingInfoModel // ignore: cast_nullable_to_non_nullable
              as BuildingModel,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$AddNewBuildingImpl implements AddNewBuilding {
  const _$AddNewBuildingImpl(
      {required this.buildingInfoModel,
      required this.onError,
      required this.onSuccess});

  @override
  final BuildingModel buildingInfoModel;
  @override
  final dynamic Function(String) onError;
  @override
  final Function onSuccess;

  @override
  String toString() {
    return 'BuildingEvent.addNewBuilding(buildingInfoModel: $buildingInfoModel, onError: $onError, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewBuildingImpl &&
            (identical(other.buildingInfoModel, buildingInfoModel) ||
                other.buildingInfoModel == buildingInfoModel) &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, buildingInfoModel, onError, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewBuildingImplCopyWith<_$AddNewBuildingImpl> get copyWith =>
      __$$AddNewBuildingImplCopyWithImpl<_$AddNewBuildingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)
        addNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel)
        removeNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel) startBuilding,
    required TResult Function(String name, String date, double x, double y)
        changePosition,
  }) {
    return addNewBuilding(buildingInfoModel, onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult? Function(String name, String date, double x, double y)?
        changePosition,
  }) {
    return addNewBuilding?.call(buildingInfoModel, onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult Function(String name, String date, double x, double y)?
        changePosition,
    required TResult orElse(),
  }) {
    if (addNewBuilding != null) {
      return addNewBuilding(buildingInfoModel, onError, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(RemoveNewBuilding value) removeNewBuilding,
    required TResult Function(StartBuilding value) startBuilding,
    required TResult Function(ChangePosition value) changePosition,
  }) {
    return addNewBuilding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult? Function(StartBuilding value)? startBuilding,
    TResult? Function(ChangePosition value)? changePosition,
  }) {
    return addNewBuilding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult Function(StartBuilding value)? startBuilding,
    TResult Function(ChangePosition value)? changePosition,
    required TResult orElse(),
  }) {
    if (addNewBuilding != null) {
      return addNewBuilding(this);
    }
    return orElse();
  }
}

abstract class AddNewBuilding implements BuildingEvent {
  const factory AddNewBuilding(
      {required final BuildingModel buildingInfoModel,
      required final dynamic Function(String) onError,
      required final Function onSuccess}) = _$AddNewBuildingImpl;

  BuildingModel get buildingInfoModel;
  dynamic Function(String) get onError;
  Function get onSuccess;
  @JsonKey(ignore: true)
  _$$AddNewBuildingImplCopyWith<_$AddNewBuildingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveNewBuildingImplCopyWith<$Res> {
  factory _$$RemoveNewBuildingImplCopyWith(_$RemoveNewBuildingImpl value,
          $Res Function(_$RemoveNewBuildingImpl) then) =
      __$$RemoveNewBuildingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildingModel buildingInfoModel});
}

/// @nodoc
class __$$RemoveNewBuildingImplCopyWithImpl<$Res>
    extends _$BuildingEventCopyWithImpl<$Res, _$RemoveNewBuildingImpl>
    implements _$$RemoveNewBuildingImplCopyWith<$Res> {
  __$$RemoveNewBuildingImplCopyWithImpl(_$RemoveNewBuildingImpl _value,
      $Res Function(_$RemoveNewBuildingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingInfoModel = null,
  }) {
    return _then(_$RemoveNewBuildingImpl(
      null == buildingInfoModel
          ? _value.buildingInfoModel
          : buildingInfoModel // ignore: cast_nullable_to_non_nullable
              as BuildingModel,
    ));
  }
}

/// @nodoc

class _$RemoveNewBuildingImpl implements RemoveNewBuilding {
  const _$RemoveNewBuildingImpl(this.buildingInfoModel);

  @override
  final BuildingModel buildingInfoModel;

  @override
  String toString() {
    return 'BuildingEvent.removeNewBuilding(buildingInfoModel: $buildingInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveNewBuildingImpl &&
            (identical(other.buildingInfoModel, buildingInfoModel) ||
                other.buildingInfoModel == buildingInfoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildingInfoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveNewBuildingImplCopyWith<_$RemoveNewBuildingImpl> get copyWith =>
      __$$RemoveNewBuildingImplCopyWithImpl<_$RemoveNewBuildingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)
        addNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel)
        removeNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel) startBuilding,
    required TResult Function(String name, String date, double x, double y)
        changePosition,
  }) {
    return removeNewBuilding(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult? Function(String name, String date, double x, double y)?
        changePosition,
  }) {
    return removeNewBuilding?.call(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult Function(String name, String date, double x, double y)?
        changePosition,
    required TResult orElse(),
  }) {
    if (removeNewBuilding != null) {
      return removeNewBuilding(buildingInfoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(RemoveNewBuilding value) removeNewBuilding,
    required TResult Function(StartBuilding value) startBuilding,
    required TResult Function(ChangePosition value) changePosition,
  }) {
    return removeNewBuilding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult? Function(StartBuilding value)? startBuilding,
    TResult? Function(ChangePosition value)? changePosition,
  }) {
    return removeNewBuilding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult Function(StartBuilding value)? startBuilding,
    TResult Function(ChangePosition value)? changePosition,
    required TResult orElse(),
  }) {
    if (removeNewBuilding != null) {
      return removeNewBuilding(this);
    }
    return orElse();
  }
}

abstract class RemoveNewBuilding implements BuildingEvent {
  const factory RemoveNewBuilding(final BuildingModel buildingInfoModel) =
      _$RemoveNewBuildingImpl;

  BuildingModel get buildingInfoModel;
  @JsonKey(ignore: true)
  _$$RemoveNewBuildingImplCopyWith<_$RemoveNewBuildingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartBuildingImplCopyWith<$Res> {
  factory _$$StartBuildingImplCopyWith(
          _$StartBuildingImpl value, $Res Function(_$StartBuildingImpl) then) =
      __$$StartBuildingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildingModel buildingInfoModel});
}

/// @nodoc
class __$$StartBuildingImplCopyWithImpl<$Res>
    extends _$BuildingEventCopyWithImpl<$Res, _$StartBuildingImpl>
    implements _$$StartBuildingImplCopyWith<$Res> {
  __$$StartBuildingImplCopyWithImpl(
      _$StartBuildingImpl _value, $Res Function(_$StartBuildingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingInfoModel = null,
  }) {
    return _then(_$StartBuildingImpl(
      null == buildingInfoModel
          ? _value.buildingInfoModel
          : buildingInfoModel // ignore: cast_nullable_to_non_nullable
              as BuildingModel,
    ));
  }
}

/// @nodoc

class _$StartBuildingImpl implements StartBuilding {
  const _$StartBuildingImpl(this.buildingInfoModel);

  @override
  final BuildingModel buildingInfoModel;

  @override
  String toString() {
    return 'BuildingEvent.startBuilding(buildingInfoModel: $buildingInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartBuildingImpl &&
            (identical(other.buildingInfoModel, buildingInfoModel) ||
                other.buildingInfoModel == buildingInfoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildingInfoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartBuildingImplCopyWith<_$StartBuildingImpl> get copyWith =>
      __$$StartBuildingImplCopyWithImpl<_$StartBuildingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)
        addNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel)
        removeNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel) startBuilding,
    required TResult Function(String name, String date, double x, double y)
        changePosition,
  }) {
    return startBuilding(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult? Function(String name, String date, double x, double y)?
        changePosition,
  }) {
    return startBuilding?.call(buildingInfoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult Function(String name, String date, double x, double y)?
        changePosition,
    required TResult orElse(),
  }) {
    if (startBuilding != null) {
      return startBuilding(buildingInfoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(RemoveNewBuilding value) removeNewBuilding,
    required TResult Function(StartBuilding value) startBuilding,
    required TResult Function(ChangePosition value) changePosition,
  }) {
    return startBuilding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult? Function(StartBuilding value)? startBuilding,
    TResult? Function(ChangePosition value)? changePosition,
  }) {
    return startBuilding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult Function(StartBuilding value)? startBuilding,
    TResult Function(ChangePosition value)? changePosition,
    required TResult orElse(),
  }) {
    if (startBuilding != null) {
      return startBuilding(this);
    }
    return orElse();
  }
}

abstract class StartBuilding implements BuildingEvent {
  const factory StartBuilding(final BuildingModel buildingInfoModel) =
      _$StartBuildingImpl;

  BuildingModel get buildingInfoModel;
  @JsonKey(ignore: true)
  _$$StartBuildingImplCopyWith<_$StartBuildingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePositionImplCopyWith<$Res> {
  factory _$$ChangePositionImplCopyWith(_$ChangePositionImpl value,
          $Res Function(_$ChangePositionImpl) then) =
      __$$ChangePositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String date, double x, double y});
}

/// @nodoc
class __$$ChangePositionImplCopyWithImpl<$Res>
    extends _$BuildingEventCopyWithImpl<$Res, _$ChangePositionImpl>
    implements _$$ChangePositionImplCopyWith<$Res> {
  __$$ChangePositionImplCopyWithImpl(
      _$ChangePositionImpl _value, $Res Function(_$ChangePositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$ChangePositionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangePositionImpl implements ChangePosition {
  const _$ChangePositionImpl(
      {required this.name,
      required this.date,
      required this.x,
      required this.y});

  @override
  final String name;
  @override
  final String date;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'BuildingEvent.changePosition(name: $name, date: $date, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePositionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, date, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePositionImplCopyWith<_$ChangePositionImpl> get copyWith =>
      __$$ChangePositionImplCopyWithImpl<_$ChangePositionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)
        addNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel)
        removeNewBuilding,
    required TResult Function(BuildingModel buildingInfoModel) startBuilding,
    required TResult Function(String name, String date, double x, double y)
        changePosition,
  }) {
    return changePosition(name, date, x, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult? Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult? Function(String name, String date, double x, double y)?
        changePosition,
  }) {
    return changePosition?.call(name, date, x, y);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildingModel buildingInfoModel,
            dynamic Function(String) onError, Function onSuccess)?
        addNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? removeNewBuilding,
    TResult Function(BuildingModel buildingInfoModel)? startBuilding,
    TResult Function(String name, String date, double x, double y)?
        changePosition,
    required TResult orElse(),
  }) {
    if (changePosition != null) {
      return changePosition(name, date, x, y);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNewBuilding value) addNewBuilding,
    required TResult Function(RemoveNewBuilding value) removeNewBuilding,
    required TResult Function(StartBuilding value) startBuilding,
    required TResult Function(ChangePosition value) changePosition,
  }) {
    return changePosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNewBuilding value)? addNewBuilding,
    TResult? Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult? Function(StartBuilding value)? startBuilding,
    TResult? Function(ChangePosition value)? changePosition,
  }) {
    return changePosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNewBuilding value)? addNewBuilding,
    TResult Function(RemoveNewBuilding value)? removeNewBuilding,
    TResult Function(StartBuilding value)? startBuilding,
    TResult Function(ChangePosition value)? changePosition,
    required TResult orElse(),
  }) {
    if (changePosition != null) {
      return changePosition(this);
    }
    return orElse();
  }
}

abstract class ChangePosition implements BuildingEvent {
  const factory ChangePosition(
      {required final String name,
      required final String date,
      required final double x,
      required final double y}) = _$ChangePositionImpl;

  String get name;
  String get date;
  double get x;
  double get y;
  @JsonKey(ignore: true)
  _$$ChangePositionImplCopyWith<_$ChangePositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BuildingState {
  List<BuildingModel> get newBuildings => throw _privateConstructorUsedError;
  List<BuildingModel> get inProcessBuildings =>
      throw _privateConstructorUsedError;
  List<BuildingModel> get oldBuildings => throw _privateConstructorUsedError;

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
      {List<BuildingModel> newBuildings,
      List<BuildingModel> inProcessBuildings,
      List<BuildingModel> oldBuildings});
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
    Object? inProcessBuildings = null,
    Object? oldBuildings = null,
  }) {
    return _then(_value.copyWith(
      newBuildings: null == newBuildings
          ? _value.newBuildings
          : newBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      inProcessBuildings: null == inProcessBuildings
          ? _value.inProcessBuildings
          : inProcessBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      oldBuildings: null == oldBuildings
          ? _value.oldBuildings
          : oldBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
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
      {List<BuildingModel> newBuildings,
      List<BuildingModel> inProcessBuildings,
      List<BuildingModel> oldBuildings});
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
    Object? inProcessBuildings = null,
    Object? oldBuildings = null,
  }) {
    return _then(_$BuildingStateImpl(
      newBuildings: null == newBuildings
          ? _value._newBuildings
          : newBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      inProcessBuildings: null == inProcessBuildings
          ? _value._inProcessBuildings
          : inProcessBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
      oldBuildings: null == oldBuildings
          ? _value._oldBuildings
          : oldBuildings // ignore: cast_nullable_to_non_nullable
              as List<BuildingModel>,
    ));
  }
}

/// @nodoc

class _$BuildingStateImpl implements _BuildingState {
  const _$BuildingStateImpl(
      {final List<BuildingModel> newBuildings = const [],
      final List<BuildingModel> inProcessBuildings = const [],
      final List<BuildingModel> oldBuildings = const []})
      : _newBuildings = newBuildings,
        _inProcessBuildings = inProcessBuildings,
        _oldBuildings = oldBuildings;

  final List<BuildingModel> _newBuildings;
  @override
  @JsonKey()
  List<BuildingModel> get newBuildings {
    if (_newBuildings is EqualUnmodifiableListView) return _newBuildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newBuildings);
  }

  final List<BuildingModel> _inProcessBuildings;
  @override
  @JsonKey()
  List<BuildingModel> get inProcessBuildings {
    if (_inProcessBuildings is EqualUnmodifiableListView)
      return _inProcessBuildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inProcessBuildings);
  }

  final List<BuildingModel> _oldBuildings;
  @override
  @JsonKey()
  List<BuildingModel> get oldBuildings {
    if (_oldBuildings is EqualUnmodifiableListView) return _oldBuildings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldBuildings);
  }

  @override
  String toString() {
    return 'BuildingState(newBuildings: $newBuildings, inProcessBuildings: $inProcessBuildings, oldBuildings: $oldBuildings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._newBuildings, _newBuildings) &&
            const DeepCollectionEquality()
                .equals(other._inProcessBuildings, _inProcessBuildings) &&
            const DeepCollectionEquality()
                .equals(other._oldBuildings, _oldBuildings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newBuildings),
      const DeepCollectionEquality().hash(_inProcessBuildings),
      const DeepCollectionEquality().hash(_oldBuildings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildingStateImplCopyWith<_$BuildingStateImpl> get copyWith =>
      __$$BuildingStateImplCopyWithImpl<_$BuildingStateImpl>(this, _$identity);
}

abstract class _BuildingState implements BuildingState {
  const factory _BuildingState(
      {final List<BuildingModel> newBuildings,
      final List<BuildingModel> inProcessBuildings,
      final List<BuildingModel> oldBuildings}) = _$BuildingStateImpl;

  @override
  List<BuildingModel> get newBuildings;
  @override
  List<BuildingModel> get inProcessBuildings;
  @override
  List<BuildingModel> get oldBuildings;
  @override
  @JsonKey(ignore: true)
  _$$BuildingStateImplCopyWith<_$BuildingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
