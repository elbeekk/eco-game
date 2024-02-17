part of 'building_bloc.dart';

@freezed
class BuildingState with _$BuildingState {
  const factory BuildingState({
    @Default([]) List<BuildingInfoModel> newBuildings,
    @Default([]) List<BuildingInfoModel> oldBuildings,
}) = _BuildingState;
}
