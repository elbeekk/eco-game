part of 'building_bloc.dart';

@freezed
class BuildingEvent with _$BuildingEvent {
  const factory BuildingEvent.addPendingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = AddPendingBuilding;

  const factory BuildingEvent.removePendingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = RemovePendingBuilding;

  const factory BuildingEvent.addConstructingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = AddConstructingBuilding;

  const factory BuildingEvent.updatePendingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = UpdatePendingBuilding;
  const factory BuildingEvent.getAll() = GetAll;
}
