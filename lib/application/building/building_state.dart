part of 'building_bloc.dart';

@freezed
class BuildingState with _$BuildingState {
  const factory BuildingState({
    @Default([]) List<BuildingModel> pendingBuildings,
    @Default([]) List<BuildingModel> constructingBuildings,
    @Default([]) List<BuildingModel> existingBuildings,
    @Default(false) bool isBuyLoading,
}) = _BuildingState;
}
