part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(1000) int coins,
    @Default("") String email,
    @Default("") String firstName,
    @Default("") String lastName,
  }) = _UserState;
}
