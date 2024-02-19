part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isSignUp,
    @Default(false) bool isLoading,
    @Default(true) bool hidePassword1,
    @Default(true) bool hidePassword2,
    GoogleSignInAccount? googleSignInAccount,
  }) = _AuthState;
}
