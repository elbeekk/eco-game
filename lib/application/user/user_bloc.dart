import 'package:bloc/bloc.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(UserState(
          firstName: LocalStorage.getMe()?.firstName ?? '',
          lastName: LocalStorage.getMe()?.lastName ?? '',
          email: LocalStorage.getMe()?.email ?? '',
          coins: LocalStorage.getMe()?.coins ?? 0,
        )) {
    on<AddCoins>((event, emit) {
      emit(state.copyWith(coins: state.coins + event.coins));
    });
    on<RemoveCoins>((event, emit) {
      emit(state.copyWith(coins: state.coins - event.coins));
    });
  }
}
