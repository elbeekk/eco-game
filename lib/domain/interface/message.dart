import 'package:dartz/dartz.dart';
import 'package:eco_game/infrastructure/models/class/message.dart';

abstract class MessageInterface {
  Future<Either<bool, dynamic>> readMessage(
      {required MessageModel messageModel});

  Future<Either<List<MessageModel>, dynamic>> getAllMessages();
}
