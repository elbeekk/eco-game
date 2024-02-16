part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.showMenu() = ShowMenu;

  const factory GameEvent.showShop() = ShowShop;

  const factory GameEvent.showEco() = ShowEco;

  const factory GameEvent.showMoney() = ShowMoney;

  const factory GameEvent.showSettings() = ShowSettings;

  const factory GameEvent.showEnergy() = ShowEnergy;

  const factory GameEvent.closeAll() = CloseAll;

  const factory GameEvent.musicMute() = MusicMute;
  const factory GameEvent.musicUnmute() = MusicUnmute;

  const factory GameEvent.addMoney(int money) = AddMoney;

  const factory GameEvent.increment(bool isFlameScale) = Increment;
  const factory GameEvent.decrement(bool isFlameScale) = Decrement;




  const factory GameEvent.removeMoney(int money) = RemoveMoney;
}
