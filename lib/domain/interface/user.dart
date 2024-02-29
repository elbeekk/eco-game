import 'package:dartz/dartz.dart';

abstract class UserInterface {
  Future<Either<bool, dynamic>> addMoney({
    required int money,
  });
}
