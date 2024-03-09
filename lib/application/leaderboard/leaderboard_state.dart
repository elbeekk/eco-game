part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default([]) List<BuildingModel> buildings,
    UserModel? user
}) = _LeaderboardState;
}
