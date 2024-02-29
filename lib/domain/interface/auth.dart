import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthInterface {
  Future<Either<Map<String, dynamic>?, dynamic>> login({
    required String username,
    required String password,
  });

  Future<Either<Map<String, dynamic>?, dynamic>> loginAsGuest(
      {required String imei});

  Future<Either<bool, dynamic>> checkUsername({
    required String username,
  });

  Future updateFirebaseToken(String? token);

  Future<Either<DocumentSnapshot<Map<String, dynamic>>, dynamic>> signUp({
    required UserModel user,
  });

  Future<Either<DocumentSnapshot<Map<String, dynamic>>, dynamic>> guestLogin();

  Future<Either<GoogleSignInAccount?, dynamic>> googleLogin();

  Future<Either<QueryDocumentSnapshot<Map<String, dynamic>>?, dynamic>>
      loginWithEmail(String email);

  Future<Either<String, dynamic>> setProfilePic(BuildContext context);

  Future<Either<QuerySnapshot<Map<String, dynamic>>, dynamic>> getBuildings();
}
