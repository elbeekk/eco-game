import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';

abstract class AppValidators {
  AppValidators._();

  static String? isNotEmptyValidator(String? title) {
    if (title?.isEmpty ?? true) {
      return "This field is required";
    }
    return null;
  }

  static String? isValidPassword(String? password) {
    if (password?.isEmpty ?? true) {
      return "This field is required";
    } else if ((password?.length ?? 0) < 5) {
      return "Password must contain at least 5 characters";
    }
    return null;
  }

  static String? isValidConfirmPassword(
      String password, String? confirmPassword) {
    if (confirmPassword?.isEmpty ?? true) {
      return "This field is required";
    } else if (confirmPassword != password) {
      return "Passwords are not matching";
    }
    return null;
  }
}
