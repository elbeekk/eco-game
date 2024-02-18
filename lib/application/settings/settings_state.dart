part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required int textSize,
    @Default(false) bool isMusicPlaying
  }) = _SettingsState;
}
