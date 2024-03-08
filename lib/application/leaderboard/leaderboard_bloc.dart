import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_event.dart';
part 'leaderboard_state.dart';
part 'leaderboard_bloc.freezed.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc() : super(const LeaderboardState.initial()) {
    on<LeaderboardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
