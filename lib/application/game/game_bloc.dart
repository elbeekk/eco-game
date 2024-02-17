import 'package:bloc/bloc.dart';
import 'package:eco_game/infrastructure/services/audio/audio.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.dart';

part 'game_state.dart';

part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(const GameState(flameScale: 2, flutterScale: 2)) {
    on<Increment>((event, emit) {
      if (event.isFlameScale && state.flameScale < 4) {
        emit(state.copyWith(flameScale: state.flameScale + 1));
      }
      if (!event.isFlameScale && state.flutterScale < 4) {
        emit(state.copyWith(flutterScale: state.flutterScale + 1));
      }
    });
    on<Decrement>((event, emit) {
      if (event.isFlameScale && state.flameScale > 1) {
        emit(state.copyWith(flameScale: state.flameScale - 1));
      }
      if (!event.isFlameScale && state.flutterScale > 1) {
        emit(state.copyWith(flutterScale: state.flutterScale - 1));
      }
    });
    on<ShowSettings>((event, emit) {
      emit(state.copyWith(settingsOpen: !state.settingsOpen));
    });

    on<ShowMenu>((event, emit) {
      if (state.menuOpen) {
        emit(
          state.copyWith(
              menuOpen: false, isMusicPlaying: FlameAudio.bgm.isPlaying),
        );
      } else {
        emit(state.copyWith(
            menuOpen: true,
            ecoOpen: false,
            energyOpen: false,
            moneyOpen: false,
            shopOpen: false,
            settingsOpen: false,
            isMusicPlaying: FlameAudio.bgm.isPlaying));
      }
    });
    on<ShowEco>((event, emit) {
      if (state.ecoOpen) {
        emit(state.copyWith(ecoOpen: false));
      } else {
        emit(state.copyWith(
          menuOpen: false,
          ecoOpen: true,
          energyOpen: false,
          moneyOpen: false,
          shopOpen: false,
        ));
      }
    });
    on<ShowEnergy>((event, emit) {
      if (state.energyOpen) {
        emit(state.copyWith(energyOpen: false));
      } else {
        emit(state.copyWith(
          menuOpen: false,
          ecoOpen: false,
          energyOpen: true,
          moneyOpen: false,
          shopOpen: false,
        ));
      }
    });
    on<ShowMoney>((event, emit) {
      if (state.moneyOpen) {
        emit(state.copyWith(moneyOpen: false));
      } else {
        emit(state.copyWith(
          menuOpen: false,
          ecoOpen: false,
          energyOpen: false,
          moneyOpen: true,
          shopOpen: false,
        ));
      }
    });
    on<ShowShop>((event, emit) {
      if (state.shopOpen) {
        emit(state.copyWith(shopOpen: false));
      } else {
        emit(state.copyWith(
          menuOpen: false,
          ecoOpen: false,
          energyOpen: false,
          moneyOpen: false,
          shopOpen: true,
        ));
      }
    });
    on<CloseAll>((event, emit) {
      emit(state.copyWith(
        ecoOpen: false,
        energyOpen: false,
        menuOpen: false,
        moneyOpen: false,
        shopOpen: false,
      ));
    });
    on<MusicMute>((event, emit) async {
      await AudioService.stopBgm();
      emit(state.copyWith(isMusicPlaying: false));
    });
    on<MusicUnmute>((event, emit) async {
      await AudioService.loadBgm();
      emit(state.copyWith(isMusicPlaying: true));
    });
  }
}
