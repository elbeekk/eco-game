import 'dart:developer';

import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static SharedPreferences? _preferences;

  LocalStorage._();

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  /// ME
  static Future<void> setMe(UserModel user) async {
    if (_preferences != null) {
      await _preferences?.setString(LocalStorageKeys.keyMe, user.toRawJson());
    }
  }

  static UserModel? getMe() {
    if (_preferences != null) {
      final rawUser = _preferences?.getString(LocalStorageKeys.keyMe);
      if (rawUser != null) {
        return UserModel.fromRawJson(rawUser);
      }
      return null;
    }
    return null;
  }

  static void removeMe() {
    if (_preferences != null) {
      final rawUser = _preferences?.remove(LocalStorageKeys.keyMe);
    }
  }

  /// BUILDING
  static Future<void> addNewBuilding(BuildingModel buildingModel) async {
    if (_preferences != null) {
      List<String> rawList =
          _preferences?.getStringList(LocalStorageKeys.keyBuildings) ?? [];
      _preferences?.setStringList(LocalStorageKeys.keyBuildings,
          [...rawList, buildingModel.toRawJson()]);
    }
  }

  static Future<void> removeOneBuilding(BuildingModel buildingModel) async {
    if (_preferences != null) {
      final rawList =
          _preferences?.getStringList(LocalStorageKeys.keyBuildings);
      final modelList =
          rawList?.map((e) => BuildingModel.fromRawJson(e)).toList();
      modelList?.removeWhere((element) =>
          element.name == buildingModel.name &&
          element.date == buildingModel.date);
      _preferences?.setStringList(LocalStorageKeys.keyBuildings,
          modelList?.map((e) => e.toRawJson()).toList() ?? []);
    }
  }

  static Future<void> setBuildings(List<BuildingModel> buildingModels) async {
    if (_preferences != null) {
      _preferences?.setStringList(LocalStorageKeys.keyBuildings,
          buildingModels.map((e) => e.toRawJson()).toList());
    }
  }

  static List<BuildingModel> getBuildings() {
    if (_preferences != null) {
      final list = _preferences?.getStringList(LocalStorageKeys.keyBuildings);
      return list?.map((e) => BuildingModel.fromRawJson(e)).toList() ?? [];
    }
    return [];
  }

  static Future<void> removeAllBuildings(
      List<BuildingModel> buildingModel) async {
    if (_preferences != null) {
      _preferences?.remove(LocalStorageKeys.keyBuildings);
    }
  }
}
