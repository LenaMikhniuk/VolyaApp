// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  Login login() {
    return const Login();
  }

// ignore: unused_element
  GoToSignUp goToSignUp() {
    return const GoToSignUp();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult login(),
    @required TResult goToSignUp(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult login(),
    TResult goToSignUp(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult login(Login value),
    @required TResult goToSignUp(GoToSignUp value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult login(Login value),
    TResult goToSignUp(GoToSignUp value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;
}

/// @nodoc
class _$Login implements Login {
  const _$Login();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult login(),
    @required TResult goToSignUp(),
  }) {
    assert(login != null);
    assert(goToSignUp != null);
    return login();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult login(),
    TResult goToSignUp(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult login(Login value),
    @required TResult goToSignUp(GoToSignUp value),
  }) {
    assert(login != null);
    assert(goToSignUp != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult login(Login value),
    TResult goToSignUp(GoToSignUp value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LoginEvent {
  const factory Login() = _$Login;
}

/// @nodoc
abstract class $GoToSignUpCopyWith<$Res> {
  factory $GoToSignUpCopyWith(
          GoToSignUp value, $Res Function(GoToSignUp) then) =
      _$GoToSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoToSignUpCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $GoToSignUpCopyWith<$Res> {
  _$GoToSignUpCopyWithImpl(GoToSignUp _value, $Res Function(GoToSignUp) _then)
      : super(_value, (v) => _then(v as GoToSignUp));

  @override
  GoToSignUp get _value => super._value as GoToSignUp;
}

/// @nodoc
class _$GoToSignUp implements GoToSignUp {
  const _$GoToSignUp();

  @override
  String toString() {
    return 'LoginEvent.goToSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoToSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult login(),
    @required TResult goToSignUp(),
  }) {
    assert(login != null);
    assert(goToSignUp != null);
    return goToSignUp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult login(),
    TResult goToSignUp(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (goToSignUp != null) {
      return goToSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult login(Login value),
    @required TResult goToSignUp(GoToSignUp value),
  }) {
    assert(login != null);
    assert(goToSignUp != null);
    return goToSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult login(Login value),
    TResult goToSignUp(GoToSignUp value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (goToSignUp != null) {
      return goToSignUp(this);
    }
    return orElse();
  }
}

abstract class GoToSignUp implements LoginEvent {
  const factory GoToSignUp() = _$GoToSignUp;
}
