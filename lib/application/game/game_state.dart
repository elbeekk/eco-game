part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(false) bool menuOpen,
    @Default(false) bool shopOpen,
    @Default(false) bool moneyOpen,
    @Default(false) bool settingsOpen,
    required Offset currentPos,
}) = _GameState;


}
