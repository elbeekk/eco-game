import 'package:dartz/dartz.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';

abstract class UserInterface {
  Future<Either<bool, dynamic>> addMoney({
    required int money,
  });
  Future<Either<bool, dynamic>> addPendingBuilding({
    required BuildingModel pendingBuilding,
  });
}
