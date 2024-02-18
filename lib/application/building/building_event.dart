part of 'building_bloc.dart';

@freezed
class BuildingEvent with _$BuildingEvent {
  const factory BuildingEvent.addNewBuilding(BuildingModel buildingInfoModel) =
      AddNewBuilding;

  const factory BuildingEvent.removeNewBuilding(
      BuildingModel buildingInfoModel) = RemoveNewBuilding;

  const factory BuildingEvent.changePosition(
      {required String name,
      required String date,
      required double x,
      required double y}) = ChangePosition;
}
