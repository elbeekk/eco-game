part of 'building_bloc.dart';

@freezed
class BuildingEvent with _$BuildingEvent {
  const factory BuildingEvent.addPendingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = AddPendingBuilding;
  const factory BuildingEvent.upgradeLed({
    required BuildingModel building,
    Function(String error)? onError,
    Function? onSuccess,
  }) = UpgradeLed;
  const factory BuildingEvent.upgradeRoof({
    required BuildingModel building,
    Function(String error)? onError,
    Function? onSuccess,
  }) = UpgradeRoof;

  const factory BuildingEvent.removePendingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = RemovePendingBuilding;

  const factory BuildingEvent.removeConstructingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = RemoveConstructingBuilding;

  const factory BuildingEvent.addConstructingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = AddConstructingBuilding;

  const factory BuildingEvent.addExistingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = AddExistingBuilding;

  const factory BuildingEvent.removeExistingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = RemoveExistingBuilding;


  const factory BuildingEvent.updatePendingBuilding({
    required BuildingModel building,
    required Function(String error) onError,
    required Function onSuccess,
  }) = UpdatePendingBuilding;

  const factory BuildingEvent.getAll() = GetAll;
}
