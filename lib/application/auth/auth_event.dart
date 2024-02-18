part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(
      {required String username,
      required String password,
      required Function onSuccess,
      required Function(String error) onError}) = Login;
}
