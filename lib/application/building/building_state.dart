part of 'building_bloc.dart';

@freezed
class BuildingState with _$BuildingState {
  const factory BuildingState({
    @Default([]) List<BuildingModel> newBuildings,
}) = _BuildingState;
}
