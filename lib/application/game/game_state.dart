part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(false) bool menuOpen,
    @Default(false) bool shopOpen,
    @Default(false) bool moneyOpen,
    @Default(false) bool ecoOpen,
    @Default(false) bool energyOpen,
    @Default(false) bool settingsOpen,
    required int flameScale,
    required int flutterScale,
    @Default(0) int money,
    @Default(false) bool isMusicPlaying
}) = _GameState;


}
