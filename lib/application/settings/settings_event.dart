part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.musicMute() = MusicMute;

  const factory SettingsEvent.musicUnmute() = MusicUnmute;
  const factory SettingsEvent.increment() = Increment;

  const factory SettingsEvent.decrement() = Decrement;

}
