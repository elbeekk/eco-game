// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      String password,
      Function onSuccess,
      dynamic Function(String) onError});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? onSuccess = null,
    Object? onError = null,
  }) {
    return _then(_$LoginImpl(
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

class _$LoginImpl implements Login {
  const _$LoginImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
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
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
      required final dynamic Function(String) onError}) = _$LoginImpl;

  String get username;
  String get password;
  Function get onSuccess;
  dynamic Function(String) get onError;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuestImplCopyWith<$Res> {
  factory _$$GuestImplCopyWith(
          _$GuestImpl value, $Res Function(_$GuestImpl) then) =
      __$$GuestImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      Function onSuccess,
      dynamic Function(String) onError});
}

/// @nodoc
class __$$GuestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GuestImpl>
    implements _$$GuestImplCopyWith<$Res> {
  __$$GuestImplCopyWithImpl(
      _$GuestImpl _value, $Res Function(_$GuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? onSuccess = null,
    Object? onError = null,
  }) {
    return _then(_$GuestImpl(
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

class _$GuestImpl implements Guest {
  const _$GuestImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestImpl &&
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
  _$$GuestImplCopyWith<_$GuestImpl> get copyWith =>
      __$$GuestImplCopyWithImpl<_$GuestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
      required final dynamic Function(String) onError}) = _$GuestImpl;

  BuildContext get context;
  Function get onSuccess;
  dynamic Function(String) get onError;
  @JsonKey(ignore: true)
  _$$GuestImplCopyWith<_$GuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleImplCopyWith<$Res> {
  factory _$$GoogleImplCopyWith(
          _$GoogleImpl value, $Res Function(_$GoogleImpl) then) =
      __$$GoogleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Function onLogin, dynamic Function(String) onError});
}

/// @nodoc
class __$$GoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleImpl>
    implements _$$GoogleImplCopyWith<$Res> {
  __$$GoogleImplCopyWithImpl(
      _$GoogleImpl _value, $Res Function(_$GoogleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onLogin = null,
    Object? onError = null,
  }) {
    return _then(_$GoogleImpl(
      onLogin: null == onLogin
          ? _value.onLogin
          : onLogin // ignore: cast_nullable_to_non_nullable
              as Function,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$GoogleImpl implements Google {
  const _$GoogleImpl({required this.onLogin, required this.onError});

  @override
  final Function onLogin;
  @override
  final dynamic Function(String) onError;

  @override
  String toString() {
    return 'AuthEvent.google(onLogin: $onLogin, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleImpl &&
            (identical(other.onLogin, onLogin) || other.onLogin == onLogin) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onLogin, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleImplCopyWith<_$GoogleImpl> get copyWith =>
      __$$GoogleImplCopyWithImpl<_$GoogleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    return google(onLogin, onError);
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    return google?.call(onLogin, onError);
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
      return google(onLogin, onError);
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
      required final dynamic Function(String) onError}) = _$GoogleImpl;

  Function get onLogin;
  dynamic Function(String) get onError;
  @JsonKey(ignore: true)
  _$$GoogleImplCopyWith<_$GoogleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToLoginImplCopyWith<$Res> {
  factory _$$GoToLoginImplCopyWith(
          _$GoToLoginImpl value, $Res Function(_$GoToLoginImpl) then) =
      __$$GoToLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoToLoginImpl>
    implements _$$GoToLoginImplCopyWith<$Res> {
  __$$GoToLoginImplCopyWithImpl(
      _$GoToLoginImpl _value, $Res Function(_$GoToLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToLoginImpl implements GoToLogin {
  const _$GoToLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.goToLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToLoginImpl);
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
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
  const factory GoToLogin() = _$GoToLoginImpl;
}

/// @nodoc
abstract class _$$ShowPassword1ImplCopyWith<$Res> {
  factory _$$ShowPassword1ImplCopyWith(
          _$ShowPassword1Impl value, $Res Function(_$ShowPassword1Impl) then) =
      __$$ShowPassword1ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPassword1ImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowPassword1Impl>
    implements _$$ShowPassword1ImplCopyWith<$Res> {
  __$$ShowPassword1ImplCopyWithImpl(
      _$ShowPassword1Impl _value, $Res Function(_$ShowPassword1Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPassword1Impl implements ShowPassword1 {
  const _$ShowPassword1Impl();

  @override
  String toString() {
    return 'AuthEvent.showPassword1()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassword1Impl);
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
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
  const factory ShowPassword1() = _$ShowPassword1Impl;
}

/// @nodoc
abstract class _$$ShowPassword2ImplCopyWith<$Res> {
  factory _$$ShowPassword2ImplCopyWith(
          _$ShowPassword2Impl value, $Res Function(_$ShowPassword2Impl) then) =
      __$$ShowPassword2ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPassword2ImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowPassword2Impl>
    implements _$$ShowPassword2ImplCopyWith<$Res> {
  __$$ShowPassword2ImplCopyWithImpl(
      _$ShowPassword2Impl _value, $Res Function(_$ShowPassword2Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPassword2Impl implements ShowPassword2 {
  const _$ShowPassword2Impl();

  @override
  String toString() {
    return 'AuthEvent.showPassword2()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassword2Impl);
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
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
  const factory ShowPassword2() = _$ShowPassword2Impl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function(String) onError, Function onSuccess});
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = null,
    Object? onSuccess = null,
  }) {
    return _then(_$LogOutImpl(
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

class _$LogOutImpl implements LogOut {
  const _$LogOutImpl({required this.onError, required this.onSuccess});

  @override
  final dynamic Function(String) onError;
  @override
  final Function onSuccess;

  @override
  String toString() {
    return 'AuthEvent.logOut(onError: $onError, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutImpl &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogOutImplCopyWith<_$LogOutImpl> get copyWith =>
      __$$LogOutImplCopyWithImpl<_$LogOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
      required final Function onSuccess}) = _$LogOutImpl;

  dynamic Function(String) get onError;
  Function get onSuccess;
  @JsonKey(ignore: true)
  _$$LogOutImplCopyWith<_$LogOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      String password,
      dynamic Function(String) onError,
      Function onSuccess});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? onError = null,
    Object? onSuccess = null,
  }) {
    return _then(_$SignUpImpl(
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

class _$SignUpImpl implements SignUp {
  const _$SignUpImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
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
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password,
            Function onSuccess, dynamic Function(String) onError)
        login,
    required TResult Function(BuildContext context, Function onSuccess,
            dynamic Function(String) onError)
        guest,
    required TResult Function(
            Function onLogin, dynamic Function(String) onError)
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
    TResult? Function(Function onLogin, dynamic Function(String) onError)?
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
    TResult Function(Function onLogin, dynamic Function(String) onError)?
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
      required final Function onSuccess}) = _$SignUpImpl;

  String get username;
  String get password;
  dynamic Function(String) get onError;
  Function get onSuccess;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
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
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
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
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
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
    return _then(_$AuthStateImpl(
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

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
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
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isSignUp,
      final bool isLoading,
      final bool isGoogleLoading,
      final bool isGuestLoading,
      final bool hidePassword1,
      final bool hidePassword2,
      final GoogleSignInAccount? googleSignInAccount}) = _$AuthStateImpl;

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
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
