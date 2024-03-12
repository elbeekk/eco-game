import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_game/domain/interface/message.dart';
import 'package:eco_game/infrastructure/models/class/message.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';

class MessageRepository implements MessageInterface {
  @override
  Future<Either<bool, dynamic>> readMessage(
      {required MessageModel messageModel}) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(LocalStorage.getMe()?.id)
          .collection('messages')
          .doc(messageModel.id)
          .set(
            messageModel.toJson(),
          );
      return const Left(true);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }

  @override
  Future<Either<List<MessageModel>, dynamic>> getAllMessages() async {
    try {
      final res = await FirebaseFirestore.instance
          .collection('users')
          .doc(LocalStorage.getMe()?.id)
          .collection('messages')
          .get();
      final list =
          res.docs.map((e) => MessageModel.fromJson(e.data())).toList();
      return Left(list);
    } on FirebaseException catch (e) {
      return Right(e.message);
    }
  }
}
