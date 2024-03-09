part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardEvent with _$LeaderboardEvent {
  const factory LeaderboardEvent.viewMap(String userId) = ViewMap;
  const factory LeaderboardEvent.exit() = Exit;
}
