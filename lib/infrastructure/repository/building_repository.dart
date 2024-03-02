import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/domain/interface/building.dart';

import '../models/class/building.dart';
import '../services/local_storage/local_storage.dart';

class BuildingRepository implements BuildingInterface {
  @override
  Future<Either<bool, dynamic>> addPendingBuilding(
      {required BuildingModel building}) async {
    try {
      final res =
          await userRepository.addMoney(money: 0 - (building.price ?? 0));
      res.fold((l) async {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(LocalStorage.getMe()?.id)
            .collection('pendingBuildings')
            .add(building.toJson());
        return const Left(true);
      }, (r) {
        return Right(r);
      });
      return const Left(false);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<bool, dynamic>> removePendingBuilding(
      {required BuildingModel building}) async {
    try {
      final res = await userRepository.addMoney(money: building.price ?? 0);
      res.fold((l) async {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(LocalStorage.getMe()?.id)
            .collection('pendingBuildings')
            .doc(building.id)
            .delete();
        return const Left(true);
      }, (r) {
        return Right(r);
      });
      return const Left(false);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<bool, dynamic>> addConstructingBuilding(
      {required BuildingModel building}) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(LocalStorage.getMe()?.id)
          .collection('constructingBuilding')
          .add(building.toJson());
      return const Left(true);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<bool, dynamic>> addExistingBuilding(
      {required BuildingModel building}) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(LocalStorage.getMe()?.id)
          .collection('existingBuilding')
          .add(building.toJson());
      return const Left(true);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<List<BuildingModel>, dynamic>> getConstructingBuilding() async {
    try{
     // final res = await FirebaseFirestore.instance.collection('users').doc(LocalStorage.getMe().id).
    }on FirebaseException catch(e){}
    throw UnimplementedError();
  }

  @override
  Future<Either<List<BuildingModel>, dynamic>> getExistingBuilding() {
    // TODO: implement getExistingBuilding
    throw UnimplementedError();
  }

  @override
  Future<Either<List<BuildingModel>, dynamic>> getPendingBuilding() {
    // TODO: implement getPendingBuilding
    throw UnimplementedError();
  }
}
