part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.showMenu() = ShowMenu;

  const factory GameEvent.showShop() = ShowShop;

  const factory GameEvent.showMoney() = ShowMoney;

  const factory GameEvent.showSettings() = ShowSettings;

  const factory GameEvent.closeAll() = CloseAll;

  const factory GameEvent.changeCurrentPos({required Offset pos}) = ChangeCurrentPos;
}
