part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(
      {required String username,
      required String password,
      required Function onSuccess,
      required Function(String error) onError}) = Login;

  const factory AuthEvent.guest() = Guest;

  const factory AuthEvent.google(
      {required Function onLogin,
      required Function(String error) onError}) = Google;

  const factory AuthEvent.goToLogin() = GoToLogin;

  const factory AuthEvent.showPassword1() = ShowPassword1;

  const factory AuthEvent.showPassword2() = ShowPassword2;

  const factory AuthEvent.logOut({
    required Function(String error) onError,
    required Function onSuccess,
  }) = LogOut;

  const factory AuthEvent.signUp({
    required String username,
    required String password,
    required Function(String error) onError,
    required Function onSuccess,
  }) = SignUp;
}
