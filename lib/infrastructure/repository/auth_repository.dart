import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_game/domain/interface/auth.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uuid/uuid.dart';

class AuthRepository implements AuthInterface {
  @override
  Future<Either<bool, dynamic>> checkUsername({required String username}) {
    // TODO: implement checkUsername
    throw UnimplementedError();
  }

  @override
  Future<Either<QueryDocumentSnapshot<Map<String, dynamic>>, dynamic>> login(
      {required String username, required String password}) async {
    try {
      final list = await FirebaseFirestore.instance
          .collection('users')
          .where("username", isEqualTo: username)
          .where("password", isEqualTo: password)
          .get();
      return Left(list.docs[0]);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<String, dynamic>> setProfilePic(BuildContext context) {
    // TODO: implement setProfilePic
    throw UnimplementedError();
  }

  @override
  Future<Either<DocumentSnapshot<Map<String,dynamic>>, dynamic>> signUp(
      {required UserModel user}) async {
    try {
      final docId = const Uuid().v1();
      await FirebaseFirestore.instance.collection('users').doc(docId).set(user
          .copyWith(
            id: docId,
            joinedDate: DateTime.now().millisecondsSinceEpoch.toString(),
            coins: 500,
          )
          .toJson());
      final data =
          await FirebaseFirestore.instance.collection('users').doc(docId).get();
      return Left(data);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future updateFirebaseToken(String? token) {
    // TODO: implement updateFirebaseToken
    throw UnimplementedError();
  }
}
