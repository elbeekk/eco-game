part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.showMenu() = ShowMenu;
  const factory GameEvent.showShop() = ShowShop;
  const factory GameEvent.showEco() = ShowEco;
  const factory GameEvent.showMoney() = ShowMoney;
  const factory GameEvent.showEnergy() = ShowEnergy;
  const factory GameEvent.closeAll() = CloseAll;
}
