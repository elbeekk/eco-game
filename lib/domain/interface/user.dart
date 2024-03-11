import 'package:dartz/dartz.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';

abstract class UserInterface {
  Future<Either<bool, dynamic>> addMoney({
    required int money,
  });

  Future<Either<bool, dynamic>> addPoints({
    required int points,
  });

  Future<Either<UserModel, dynamic>> getUser({
    required String id,
  });
}
