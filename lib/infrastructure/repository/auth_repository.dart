import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_game/domain/interface/auth.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uuid/uuid.dart';

class AuthRepository implements AuthInterface {
  @override
  Future<Either<bool, dynamic>> checkUsername(
      {required String username}) async {
    try {
      final snap = await FirebaseFirestore.instance
          .collection('users')
          .where('username', isEqualTo: username)
          .get();
      if (snap.docs.isEmpty) {
        return const Left(false);
      } else {
        return const Left(true);
      }
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<Map<String, dynamic>?, dynamic>> login(
      {required String username, required String password}) async {
    try {
      final list = await FirebaseFirestore.instance
          .collection('users')
          .where("username", isEqualTo: username)
          .where("password", isEqualTo: password)
          .get();
      if (list.docs.isNotEmpty) {
        return Left(list.docs[0].data());
      } else {
        return const Left(null);
      }
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
  Future<Either<DocumentSnapshot<Map<String, dynamic>>, dynamic>> signUp(
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

  @override
  Future<Either<GoogleSignInAccount?, dynamic>> googleLogin({required bool isWeb}) async {
    //ss
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        // final GoogleSignInAuthentication googleSignInAuthentication =
        //     await googleSignInAccount.authentication;
        // final AuthCredential credential = GoogleAuthProvider.credential(
        //     idToken: googleSignInAuthentication.idToken,
        //     accessToken: googleSignInAuthentication.accessToken);
        return Left(googleSignInAccount);
      } else {
        return const Left(null);
      }
    } catch (e) {
      debugPrint(e.toString());
      return Right(e.toString());
    }
  }

  @override
  Future<Either<DocumentSnapshot<Map<String, dynamic>>, dynamic>> guestLogin() {
    // TODO: implement guestLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<QueryDocumentSnapshot<Map<String, dynamic>>?, dynamic>>
      loginWithEmail(String email) async {
    try {
      final snap = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: email)
          .limit(1)
          .get();
      if (snap.docs.isNotEmpty) {
        return Left(snap.docs.single);
      } else {
        return const Left(null);
      }
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<QuerySnapshot<Map<String, dynamic>>, dynamic>>
      getBuildings() async {
    try {
      final snap = await FirebaseFirestore.instance
          .collection('users')
          .doc(LocalStorage.getMe()?.id)
          .collection('buildings')
          .get();
      return Left(snap);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<Map<String, dynamic>?, dynamic>> loginAsGuest(
      {required String imei}) async {
    try {
      final res =
          await FirebaseFirestore.instance.collection('users').doc(imei).get();
      if (res.data() == null) {
        await FirebaseFirestore.instance.collection('users').doc(imei).set(
            UserModel(
                    id: imei,
                    firstName: "Guest",
                    lastName: '',
                    password: '',
                    username: '',
                    photoUrl: '',
                    joinedDate:
                        DateTime.now().millisecondsSinceEpoch.toString(),
                    email: '',
                    coins: 500)
                .toJson());
      }
      final ress =
          await FirebaseFirestore.instance.collection('users').doc(imei).get();
      return Left(ress.data());
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }
}
