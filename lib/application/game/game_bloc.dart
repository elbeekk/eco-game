import 'package:bloc/bloc.dart';
import 'package:eco_game/presentation/pages/flame_audio/audio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.dart';

part 'game_state.dart';

part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(const GameState()) {
    on<ShowMenu>((event, emit) {
      if (state.menuOpen) {
        emit(state.copyWith(
            menuOpen: false, isMusicPlaying: AudioService.isPlaying()));
      } else {
        emit(state.copyWith(
            menuOpen: true,
            ecoOpen: false,
            energyOpen: false,
            moneyOpen: false,
            shopOpen: false,
            isMusicPlaying: AudioService.isPlaying()));
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
    on<MusicMuteUnmute>((event, emit) async {
      await AudioService.muteUnmute();
      emit(state.copyWith(isMusicPlaying: !state.isMusicPlaying));
    });
  }
}
