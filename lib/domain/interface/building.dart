import 'package:dartz/dartz.dart';
import 'package:eco_game/infrastructure/services/constants.dart';

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
  Future<Either<bool, dynamic>> removeConstructingBuilding({
    required BuildingModel building,
  });


  Future<Either<bool, dynamic>> addExistingBuilding({
    required BuildingModel building,
  });

  Future<Either<bool, dynamic>> removeExistingBuilding({
    required BuildingModel building,
  });

  Future<Either<List<BuildingModel>, dynamic>> getBuildings(
      {required BuildingType type});
}
