import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_game/domain/interface/user.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/material.dart';

class UserRepository implements UserInterface {
  @override
  Future<Either<bool, dynamic>> addMoney({required int money}) async {
    try {
      final res = await FirebaseFirestore.instance
          .collection('users')
          .doc(LocalStorage.getMe()?.id)
          .get();
      final user = UserModel.fromJson(res.data() ?? {});
      if ((user.coins ?? 0) + money > 0) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(LocalStorage.getMe()?.id)
            .update({"coins": (user.coins ?? 0) + money});
        return const Left(true);
      }
      return const Right("Not enough money");
    } on FirebaseException catch (e) {
      debugPrint("addMoney error $e");
      return Right(e.message);
    }
  }

  @override
  Future<Either<bool, dynamic>> addPendingBuilding(
      {required BuildingModel pendingBuilding}) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(LocalStorage.getMe()?.id)
          .collection('pendingBuildings')
          .add(pendingBuilding.toJson());
      return const Left(true);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }
}
