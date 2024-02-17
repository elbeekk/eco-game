part of 'building_bloc.dart';

@freezed
class BuildingEvent with _$BuildingEvent {
  const factory BuildingEvent.addNewBuilding(BuildingInfoModel buildingInfoModel) = AddNewBuilding;
  const factory BuildingEvent.addOldBuilding(BuildingInfoModel buildingInfoModel) = AddOldBuilding;
}
