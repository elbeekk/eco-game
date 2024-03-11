import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/models/class/building.dart';

part 'leaderboard_event.dart';

part 'leaderboard_state.dart';

part 'leaderboard_bloc.freezed.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc() : super(const LeaderboardState()) {
    on<ViewMap>((event, emit) async {
      final res = await buildingRepository.getBuildings(
          type: BuildingType.existing, docId: event.userId);
      final userRes = await userRepository.getUser(id: event.userId);

      res.fold((buildings) {
        userRes.fold((user) {
          emit(state.copyWith(buildings: buildings, user: user));
        }, (r) {
          emit(state.copyWith(user: null));
          log('error and setting');

        });
      }, (r) {
        log('error and setting');
        emit(state.copyWith(user: null));

      });
    });
    on<Exit>((event, emit) {
      emit(state.copyWith(buildings: [],user: null));
    });
  }
}
