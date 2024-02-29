part of 'building_bloc.dart';

@freezed
class BuildingEvent with _$BuildingEvent {
  const factory BuildingEvent.addNewBuilding({
    required BuildingModel buildingInfoModel,
  required Function(String error) onError,
  required Function onSuccess,
  }) = AddNewBuilding;

  const factory BuildingEvent.removeNewBuilding(
      BuildingModel buildingInfoModel) = RemoveNewBuilding;

  const factory BuildingEvent.startBuilding(BuildingModel buildingInfoModel) =
      StartBuilding;

  const factory BuildingEvent.changePosition(
      {required String name,
      required String date,
      required double x,
      required double y}) = ChangePosition;
}
