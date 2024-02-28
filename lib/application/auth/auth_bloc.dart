import 'package:bloc/bloc.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/infrastructure/models/class/user.dart';
import 'package:eco_game/infrastructure/services/helpers.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<Login>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await authRepository.login(
          username: event.username, password: event.password);
      res.fold((l) {
        if (l != null) {
          LocalStorage.setMe(UserModel.fromJson(l));
          event.onSuccess.call();
        } else {
          event.onError.call("Incorrect password or email, please try again");
        }
      }, (r) {
        event.onError.call(r);
      });
      emit(state.copyWith(isLoading: false));
    });

    on<Google>((event, emit) async {
      emit(state.copyWith(isGoogleLoading: true));
      final res = await authRepository.googleLogin();
      await res.fold((googleAccount) async {
        if (googleAccount != null) {
          emit(state.copyWith(googleSignInAccount: googleAccount));
          final login =
              await authRepository.loginWithEmail(googleAccount.email);
          login.fold((emailLogin) {
            if (emailLogin != null) {
              LocalStorage.setMe(UserModel.fromJson(emailLogin.data()));
              event.onLogin.call();
            } else {
              emit(state.copyWith(isSignUp: true));
            }
          }, (r) {
            event.onError.call(r.toString());
          });
        }
      }, (r) {
        event.onError.call(r.toString());
      });
      emit(state.copyWith(isGoogleLoading: false));
    });

    on<GoToLogin>((event, emit) async {
      await GoogleSignIn().signOut();
      emit(state.copyWith(isSignUp: false, googleSignInAccount: null));
    });

    on<LogOut>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        if(LocalStorage.getMe()?.email?.isNotEmpty??false) {
          await GoogleSignIn().signOut();
        }
        LocalStorage.removeMe();
        event.onSuccess.call();
      } catch (e) {
        event.onError.call(e.toString());
      }
      emit(state.copyWith(isLoading: false));
    });

    on<SignUp>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final usernameRes =
          await authRepository.checkUsername(username: event.username);
      usernameRes.fold((l) async {
        if (!l) {
          final res = await authRepository.signUp(
            user: UserModel(
              username: event.username,
              password: event.password,
              firstName: state.googleSignInAccount?.displayName
                  ?.split(' ')[0]
                  .toString(),
              lastName: state.googleSignInAccount?.displayName
                  ?.split(' ')[1]
                  .toString(),
              photoUrl: state.googleSignInAccount?.photoUrl,
              email: state.googleSignInAccount?.email,
            ),
          );
          res.fold((l) {
            LocalStorage.setMe(UserModel.fromJson(l.data() ?? {}));
            event.onSuccess.call();
          }, (r) {
            event.onError.call(r);
          });
        } else {
          event.onError.call("This username is already taken");
        }
      }, (r) {
        event.onError.call(r);
      });

      emit(state.copyWith(isLoading: false));
    });

    on<ShowPassword1>((event, emit) {
      emit(state.copyWith(hidePassword1: !state.hidePassword1));
    });

    on<ShowPassword2>((event, emit) {
      emit(state.copyWith(hidePassword2: !state.hidePassword2));
    });

    on<Guest>((event, emit) async {
      emit(state.copyWith(isGuestLoading: true));
      final imei = await AppHelper.generateIMEI(event.context);
      final res = await authRepository.loginAsGuest(imei: imei);
      res.fold((l) async {
        if (l != null) {
          await LocalStorage.setMe(
            UserModel.fromJson(l),
          );
          event.onSuccess.call();
        }
      }, (r) {
        event.onError.call(r);
      });
      emit(state.copyWith(isGuestLoading: false));

    });
  }
}
