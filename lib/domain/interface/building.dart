import 'package:dartz/dartz.dart';

import '../../infrastructure/models/class/building.dart';

abstract class BuildingInterface {
  Future<Either<bool, dynamic>> addPendingBuilding({
    required BuildingModel building,
  });

  Future<Either<bool, dynamic>> removePendingBuilding({
    required BuildingModel building,
  });

  Future<Either<bool, dynamic>> addConstructingBuilding({
    required BuildingModel building,
  });

  Future<Either<bool, dynamic>> addExistingBuilding({
    required BuildingModel building,
  });

  Future<Either<List<BuildingModel>, dynamic>> getExistingBuilding();
  Future<Either<List<BuildingModel>, dynamic>> getPendingBuilding();
  Future<Either<List<BuildingModel>, dynamic>> getConstructingBuilding();
}
