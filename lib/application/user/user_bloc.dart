import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<AddCoins>((event, emit) {
      emit(state.copyWith(coins: state.coins + event.coins));
    });
    on<RemoveCoins>((event, emit) {
      emit(state.copyWith(coins: state.coins - event.coins));
    });
  }
}
