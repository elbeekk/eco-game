part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.addCoins(int coins) = AddCoins;

  const factory UserEvent.removeCoins(int coins) = RemoveCoins;
}
