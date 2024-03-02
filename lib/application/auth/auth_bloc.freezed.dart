// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      String password,
      Function onSuccess,
      dynamic Function(String) onError});
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$Login>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? onSuccess = null,
    Object? onError = null,
  }) {
    return _then(_$Login(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as Function,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$Login implements Login {
  const _$Login(
      {required this.username,
      required this.password,
      required this.onSuccess,
      required this.onError});

  @override
  final String username;
  @override
  final String password;
  @override
  final Function onSuccess;
  @override
  final dynamic Function(String) onError;

  @override
  String toString() {
    return 'AuthEvent.login(username: $username, password: $password, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Login &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCopyWith<_$Login> get copyWith =>
      __$$LoginCopyWithImpl<_$Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return login(username, password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return login?.call(username, password, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthEvent {
  const factory Login(
      {required final String username,
      required final String password,
      required final Function onSuccess,
      required final dynamic Function(String) onError}) = _$Login;

  String get username;
  String get password;
  Function get onSuccess;
  dynamic Function(String) get onError;
  @JsonKey(ignore: true)
  _$$LoginCopyWith<_$Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuestCopyWith<$Res> {
  factory _$$GuestCopyWith(_$Guest value, $Res Function(_$Guest) then) =
      __$$GuestCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      Function onSuccess,
      dynamic Function(String) onError});
}

/// @nodoc
class __$$GuestCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$Guest>
    implements _$$GuestCopyWith<$Res> {
  __$$GuestCopyWithImpl(_$Guest _value, $Res Function(_$Guest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? onSuccess = null,
    Object? onError = null,
  }) {
    return _then(_$Guest(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as Function,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$Guest implements Guest {
  const _$Guest(
      {required this.context, required this.onSuccess, required this.onError});

  @override
  final BuildContext context;
  @override
  final Function onSuccess;
  @override
  final dynamic Function(String) onError;

  @override
  String toString() {
    return 'AuthEvent.guest(context: $context, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Guest &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestCopyWith<_$Guest> get copyWith =>
      __$$GuestCopyWithImpl<_$Guest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return guest(context, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return guest?.call(context, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(context, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return guest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return guest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class Guest implements AuthEvent {
  const factory Guest(
      {required final BuildContext context,
      required final Function onSuccess,
      required final dynamic Function(String) onError}) = _$Guest;

  BuildContext get context;
  Function get onSuccess;
  dynamic Function(String) get onError;
  @JsonKey(ignore: true)
  _$$GuestCopyWith<_$Guest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleCopyWith<$Res> {
  factory _$$GoogleCopyWith(_$Google value, $Res Function(_$Google) then) =
      __$$GoogleCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Function onLogin,
      dynamic Function(String) onError,
      BuildContext context});
}

/// @nodoc
class __$$GoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Google>
    implements _$$GoogleCopyWith<$Res> {
  __$$GoogleCopyWithImpl(_$Google _value, $Res Function(_$Google) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onLogin = null,
    Object? onError = null,
    Object? context = null,
  }) {
    return _then(_$Google(
      onLogin: null == onLogin
          ? _value.onLogin
          : onLogin // ignore: cast_nullable_to_non_nullable
              as Function,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$Google implements Google {
  const _$Google(
      {required this.onLogin, required this.onError, required this.context});

  @override
  final Function onLogin;
  @override
  final dynamic Function(String) onError;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.google(onLogin: $onLogin, onError: $onError, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Google &&
            (identical(other.onLogin, onLogin) || other.onLogin == onLogin) &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onLogin, onError, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleCopyWith<_$Google> get copyWith =>
      __$$GoogleCopyWithImpl<_$Google>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return google(onLogin, onError, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return google?.call(onLogin, onError, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(onLogin, onError, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return google(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return google?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(this);
    }
    return orElse();
  }
}

abstract class Google implements AuthEvent {
  const factory Google(
      {required final Function onLogin,
      required final dynamic Function(String) onError,
      required final BuildContext context}) = _$Google;

  Function get onLogin;
  dynamic Function(String) get onError;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GoogleCopyWith<_$Google> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToLoginCopyWith<$Res> {
  factory _$$GoToLoginCopyWith(
          _$GoToLogin value, $Res Function(_$GoToLogin) then) =
      __$$GoToLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoToLogin>
    implements _$$GoToLoginCopyWith<$Res> {
  __$$GoToLoginCopyWithImpl(
      _$GoToLogin _value, $Res Function(_$GoToLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToLogin implements GoToLogin {
  const _$GoToLogin();

  @override
  String toString() {
    return 'AuthEvent.goToLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return goToLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return goToLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (goToLogin != null) {
      return goToLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return goToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return goToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (goToLogin != null) {
      return goToLogin(this);
    }
    return orElse();
  }
}

abstract class GoToLogin implements AuthEvent {
  const factory GoToLogin() = _$GoToLogin;
}

/// @nodoc
abstract class _$$ShowPassword1CopyWith<$Res> {
  factory _$$ShowPassword1CopyWith(
          _$ShowPassword1 value, $Res Function(_$ShowPassword1) then) =
      __$$ShowPassword1CopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPassword1CopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowPassword1>
    implements _$$ShowPassword1CopyWith<$Res> {
  __$$ShowPassword1CopyWithImpl(
      _$ShowPassword1 _value, $Res Function(_$ShowPassword1) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPassword1 implements ShowPassword1 {
  const _$ShowPassword1();

  @override
  String toString() {
    return 'AuthEvent.showPassword1()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassword1);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return showPassword1();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return showPassword1?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (showPassword1 != null) {
      return showPassword1();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return showPassword1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return showPassword1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (showPassword1 != null) {
      return showPassword1(this);
    }
    return orElse();
  }
}

abstract class ShowPassword1 implements AuthEvent {
  const factory ShowPassword1() = _$ShowPassword1;
}

/// @nodoc
abstract class _$$ShowPassword2CopyWith<$Res> {
  factory _$$ShowPassword2CopyWith(
          _$ShowPassword2 value, $Res Function(_$ShowPassword2) then) =
      __$$ShowPassword2CopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPassword2CopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowPassword2>
    implements _$$ShowPassword2CopyWith<$Res> {
  __$$ShowPassword2CopyWithImpl(
      _$ShowPassword2 _value, $Res Function(_$ShowPassword2) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPassword2 implements ShowPassword2 {
  const _$ShowPassword2();

  @override
  String toString() {
    return 'AuthEvent.showPassword2()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassword2);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return showPassword2();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return showPassword2?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (showPassword2 != null) {
      return showPassword2();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return showPassword2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return showPassword2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (showPassword2 != null) {
      return showPassword2(this);
    }
    return orElse();
  }
}

abstract class ShowPassword2 implements AuthEvent {
  const factory ShowPassword2() = _$ShowPassword2;
}

/// @nodoc
abstract class _$$LogOutCopyWith<$Res> {
  factory _$$LogOutCopyWith(_$LogOut value, $Res Function(_$LogOut) then) =
      __$$LogOutCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function(String) onError, Function onSuccess});
}

/// @nodoc
class __$$LogOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOut>
    implements _$$LogOutCopyWith<$Res> {
  __$$LogOutCopyWithImpl(_$LogOut _value, $Res Function(_$LogOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = null,
    Object? onSuccess = null,
  }) {
    return _then(_$LogOut(
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$LogOut implements LogOut {
  const _$LogOut({required this.onError, required this.onSuccess});

  @override
  final dynamic Function(String) onError;
  @override
  final Function onSuccess;

  @override
  String toString() {
    return 'AuthEvent.logOut(onError: $onError, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOut &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogOutCopyWith<_$LogOut> get copyWith =>
      __$$LogOutCopyWithImpl<_$LogOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return logOut(onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return logOut?.call(onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(onError, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements AuthEvent {
  const factory LogOut(
      {required final dynamic Function(String) onError,
      required final Function onSuccess}) = _$LogOut;

  dynamic Function(String) get onError;
  Function get onSuccess;
  @JsonKey(ignore: true)
  _$$LogOutCopyWith<_$LogOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      String password,
      dynamic Function(String) onError,
      Function onSuccess});
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? onError = null,
    Object? onSuccess = null,
  }) {
    return _then(_$SignUp(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp(
      {required this.username,
      required this.password,
      required this.onError,
      required this.onSuccess});

  @override
  final String username;
  @override
  final String password;
  @override
  final dynamic Function(String) onError;
  @override
  final Function onSuccess;

  @override
  String toString() {
    return 'AuthEvent.signUp(username: $username, password: $password, onError: $onError, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUp &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, onError, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpCopyWith<_$SignUp> get copyWith =>
      __$$SignUpCopyWithImpl<_$SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(Function onLogin,
            dynamic Function(String) onError, BuildContext context)
        google,
    required TResult Function() goToLogin,
    required TResult Function() showPassword1,
    required TResult Function() showPassword2,
    required TResult Function(
            dynamic Function(String) onError, Function onSuccess)
        logOut,
    required TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)
        signUp,
  }) {
    return signUp(username, password, onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult? Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult? Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult? Function()? goToLogin,
    TResult? Function()? showPassword1,
    TResult? Function()? showPassword2,
    TResult? Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult? Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
  }) {
    return signUp?.call(username, password, onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password, Function onSuccess,
            dynamic Function(String) onError)?
        login,
    TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)?
        guest,
    TResult Function(Function onLogin, dynamic Function(String) onError,
            BuildContext context)?
        google,
    TResult Function()? goToLogin,
    TResult Function()? showPassword1,
    TResult Function()? showPassword2,
    TResult Function(dynamic Function(String) onError, Function onSuccess)?
        logOut,
    TResult Function(String username, String password,
            dynamic Function(String) onError, Function onSuccess)?
        signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(username, password, onError, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Guest value) guest,
    required TResult Function(Google value) google,
    required TResult Function(GoToLogin value) goToLogin,
    required TResult Function(ShowPassword1 value) showPassword1,
    required TResult Function(ShowPassword2 value) showPassword2,
    required TResult Function(LogOut value) logOut,
    required TResult Function(SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Guest value)? guest,
    TResult? Function(Google value)? google,
    TResult? Function(GoToLogin value)? goToLogin,
    TResult? Function(ShowPassword1 value)? showPassword1,
    TResult? Function(ShowPassword2 value)? showPassword2,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Guest value)? guest,
    TResult Function(Google value)? google,
    TResult Function(GoToLogin value)? goToLogin,
    TResult Function(ShowPassword1 value)? showPassword1,
    TResult Function(ShowPassword2 value)? showPassword2,
    TResult Function(LogOut value)? logOut,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements AuthEvent {
  const factory SignUp(
      {required final String username,
      required final String password,
      required final dynamic Function(String) onError,
      required final Function onSuccess}) = _$SignUp;

  String get username;
  String get password;
  dynamic Function(String) get onError;
  Function get onSuccess;
  @JsonKey(ignore: true)
  _$$SignUpCopyWith<_$SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isSignUp => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isGoogleLoading => throw _privateConstructorUsedError;
  bool get isGuestLoading => throw _privateConstructorUsedError;
  bool get hidePassword1 => throw _privateConstructorUsedError;
  bool get hidePassword2 => throw _privateConstructorUsedError;
  GoogleSignInAccount? get googleSignInAccount =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isSignUp,
      bool isLoading,
      bool isGoogleLoading,
      bool isGuestLoading,
      bool hidePassword1,
      bool hidePassword2,
      GoogleSignInAccount? googleSignInAccount});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = null,
    Object? isLoading = null,
    Object? isGoogleLoading = null,
    Object? isGuestLoading = null,
    Object? hidePassword1 = null,
    Object? hidePassword2 = null,
    Object? googleSignInAccount = freezed,
  }) {
    return _then(_value.copyWith(
      isSignUp: null == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGuestLoading: null == isGuestLoading
          ? _value.isGuestLoading
          : isGuestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword1: null == hidePassword1
          ? _value.hidePassword1
          : hidePassword1 // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword2: null == hidePassword2
          ? _value.hidePassword2
          : hidePassword2 // ignore: cast_nullable_to_non_nullable
              as bool,
      googleSignInAccount: freezed == googleSignInAccount
          ? _value.googleSignInAccount
          : googleSignInAccount // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSignUp,
      bool isLoading,
      bool isGoogleLoading,
      bool isGuestLoading,
      bool hidePassword1,
      bool hidePassword2,
      GoogleSignInAccount? googleSignInAccount});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = null,
    Object? isLoading = null,
    Object? isGoogleLoading = null,
    Object? isGuestLoading = null,
    Object? hidePassword1 = null,
    Object? hidePassword2 = null,
    Object? googleSignInAccount = freezed,
  }) {
    return _then(_$_AuthState(
      isSignUp: null == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGuestLoading: null == isGuestLoading
          ? _value.isGuestLoading
          : isGuestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword1: null == hidePassword1
          ? _value.hidePassword1
          : hidePassword1 // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword2: null == hidePassword2
          ? _value.hidePassword2
          : hidePassword2 // ignore: cast_nullable_to_non_nullable
              as bool,
      googleSignInAccount: freezed == googleSignInAccount
          ? _value.googleSignInAccount
          : googleSignInAccount // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.isSignUp = false,
      this.isLoading = false,
      this.isGoogleLoading = false,
      this.isGuestLoading = false,
      this.hidePassword1 = true,
      this.hidePassword2 = true,
      this.googleSignInAccount});

  @override
  @JsonKey()
  final bool isSignUp;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isGoogleLoading;
  @override
  @JsonKey()
  final bool isGuestLoading;
  @override
  @JsonKey()
  final bool hidePassword1;
  @override
  @JsonKey()
  final bool hidePassword2;
  @override
  final GoogleSignInAccount? googleSignInAccount;

  @override
  String toString() {
    return 'AuthState(isSignUp: $isSignUp, isLoading: $isLoading, isGoogleLoading: $isGoogleLoading, isGuestLoading: $isGuestLoading, hidePassword1: $hidePassword1, hidePassword2: $hidePassword2, googleSignInAccount: $googleSignInAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isSignUp, isSignUp) ||
                other.isSignUp == isSignUp) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isGoogleLoading, isGoogleLoading) ||
                other.isGoogleLoading == isGoogleLoading) &&
            (identical(other.isGuestLoading, isGuestLoading) ||
                other.isGuestLoading == isGuestLoading) &&
            (identical(other.hidePassword1, hidePassword1) ||
                other.hidePassword1 == hidePassword1) &&
            (identical(other.hidePassword2, hidePassword2) ||
                other.hidePassword2 == hidePassword2) &&
            (identical(other.googleSignInAccount, googleSignInAccount) ||
                other.googleSignInAccount == googleSignInAccount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSignUp,
      isLoading,
      isGoogleLoading,
      isGuestLoading,
      hidePassword1,
      hidePassword2,
      googleSignInAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isSignUp,
      final bool isLoading,
      final bool isGoogleLoading,
      final bool isGuestLoading,
      final bool hidePassword1,
      final bool hidePassword2,
      final GoogleSignInAccount? googleSignInAccount}) = _$_AuthState;

  @override
  bool get isSignUp;
  @override
  bool get isLoading;
  @override
  bool get isGoogleLoading;
  @override
  bool get isGuestLoading;
  @override
  bool get hidePassword1;
  @override
  bool get hidePassword2;
  @override
  GoogleSignInAccount? get googleSignInAccount;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
