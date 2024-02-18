import 'package:bloc/bloc.dart';

import 'package:eco_game/infrastructure/services/audio/audio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState(textSize: 2)) {
    on<MusicMute>((event, emit) async {
      await AudioService.stopBgm();
      emit(state.copyWith(isMusicPlaying: false));
    });
    on<MusicUnmute>((event, emit) async {
      await AudioService.loadBgm();
      emit(state.copyWith(isMusicPlaying: true));
    });
    on<Increment>((event, emit) {
      if (state.textSize < 4) {
        emit(state.copyWith(textSize: state.textSize + 1));
      }
    });

    on<Decrement>((event, emit) {
      if (state.textSize > 1) {
        emit(state.copyWith(textSize: state.textSize - 1));
      }
    });
  }
}
