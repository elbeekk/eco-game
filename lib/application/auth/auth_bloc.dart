import 'package:bloc/bloc.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<Login>((event, emit) async {
      final res = await authRepository.login(
          username: event.username, password: event.password);
      res.fold((l) {
        LocalStorage.setMe(UserModel.fromJson(l.data()));
        event.onSuccess.call();
      }, (r) {
        event.onError.call(r);
      });
    });
  }
}
