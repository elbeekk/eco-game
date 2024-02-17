import 'package:eco_game/infrastructure/models/class/building_info.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static SharedPreferences? _preferences;

  LocalStorage._();

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> addNewBuilding(
      BuildingInfoModel buildingInfoModel) async {
    if (_preferences != null) {
      List<String> rawList =
          _preferences?.getStringList(LocalStorageKeys.keyBuildings) ?? [];
      _preferences?.setStringList(LocalStorageKeys.keyBuildings,
          [...rawList, buildingInfoModel.toRawJson()]);
    }
  }

  static Future<void> removeOneBuilding(
      BuildingInfoModel buildingInfoModel) async {
    if (_preferences != null) {
      final rawList =
          _preferences?.getStringList(LocalStorageKeys.keyBuildings);
      final modelList =
          rawList?.map((e) => BuildingInfoModel.fromRawJson(e)).toList();
      modelList?.removeWhere((element) =>
          element.name == buildingInfoModel.name &&
          element.date == buildingInfoModel.date);
      _preferences?.setStringList(LocalStorageKeys.keyBuildings,
          modelList?.map((e) => e.toRawJson()).toList() ?? []);
    }
  }

  static Future<void> setBuildings(
      List<BuildingInfoModel> buildingInfoModels) async {
    if (_preferences != null) {
      _preferences?.setStringList(LocalStorageKeys.keyBuildings,
          buildingInfoModels.map((e) => e.toRawJson()).toList());
    }
  }

  static List<BuildingInfoModel> getBuildings() {
    if (_preferences != null) {
      final list = _preferences?.getStringList(LocalStorageKeys.keyBuildings);
      return list?.map((e) => BuildingInfoModel.fromRawJson(e)).toList() ?? [];
    }
    return [];
  }

  static Future<void> removeAllBuildings(
      List<BuildingInfoModel> buildingInfoModels) async {
    if (_preferences != null) {
      _preferences?.remove(LocalStorageKeys.keyBuildings);
    }
  }


}
