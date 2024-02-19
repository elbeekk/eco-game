import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.dart';

part 'game_state.dart';

part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc()
      : super(
          const GameState(
            currentPos: Offset(0, 0),
          ),
        ) {
    on<ShowSettings>((event, emit) {
      emit(state.copyWith(settingsOpen: !state.settingsOpen));
    });

    on<ShowMenu>((event, emit) {
      if (state.menuOpen) {
        emit(
          state.copyWith(menuOpen: false),
        );
      } else {
        emit(state.copyWith(
          menuOpen: true,
          moneyOpen: false,
          shopOpen: false,
          settingsOpen: false,
        ));
      }
    });

    on<ShowShop>((event, emit) {
      if (state.shopOpen) {
        emit(state.copyWith(shopOpen: false));
      } else {
        emit(state.copyWith(
          menuOpen: false,
          moneyOpen: false,
          shopOpen: true,
        ));
      }
    });
    on<CloseAll>((event, emit) {
      emit(state.copyWith(
        menuOpen: false,
        moneyOpen: false,
        shopOpen: false,
      ));
    });
    on<ChangeCurrentPos>((event, emit) {
      emit(state.copyWith(currentPos: event.pos));
    });
  }
}
