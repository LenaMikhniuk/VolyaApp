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
  LoginWithEmail loginWithEmail(String email, String password) {
    return LoginWithEmail(
      email,
      password,
    );
  }

// ignore: unused_element
  SignUp signUp(String email, String password) {
    return SignUp(
      email,
      password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  String get email;
  String get password;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String email, String password),
    @required TResult signUp(String email, String password),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String email, String password),
    TResult signUp(String email, String password),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(LoginWithEmail value),
    @required TResult signUp(SignUp value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(LoginWithEmail value),
    TResult signUp(SignUp value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class $LoginWithEmailCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $LoginWithEmailCopyWith(
          LoginWithEmail value, $Res Function(LoginWithEmail) then) =
      _$LoginWithEmailCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginWithEmailCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginWithEmailCopyWith<$Res> {
  _$LoginWithEmailCopyWithImpl(
      LoginWithEmail _value, $Res Function(LoginWithEmail) _then)
      : super(_value, (v) => _then(v as LoginWithEmail));

  @override
  LoginWithEmail get _value => super._value as LoginWithEmail;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(LoginWithEmail(
      email == freezed ? _value.email : email as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$LoginWithEmail implements LoginWithEmail {
  const _$LoginWithEmail(this.email, this.password)
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $LoginWithEmailCopyWith<LoginWithEmail> get copyWith =>
      _$LoginWithEmailCopyWithImpl<LoginWithEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String email, String password),
    @required TResult signUp(String email, String password),
  }) {
    assert(loginWithEmail != null);
    assert(signUp != null);
    return loginWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String email, String password),
    TResult signUp(String email, String password),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(LoginWithEmail value),
    @required TResult signUp(SignUp value),
  }) {
    assert(loginWithEmail != null);
    assert(signUp != null);
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(LoginWithEmail value),
    TResult signUp(SignUp value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmail implements LoginEvent {
  const factory LoginWithEmail(String email, String password) =
      _$LoginWithEmail;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  $LoginWithEmailCopyWith<LoginWithEmail> get copyWith;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(SignUp _value, $Res Function(SignUp) _then)
      : super(_value, (v) => _then(v as SignUp));

  @override
  SignUp get _value => super._value as SignUp;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(SignUp(
      email == freezed ? _value.email : email as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$SignUp implements SignUp {
  const _$SignUp(this.email, this.password)
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.signUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $SignUpCopyWith<SignUp> get copyWith =>
      _$SignUpCopyWithImpl<SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithEmail(String email, String password),
    @required TResult signUp(String email, String password),
  }) {
    assert(loginWithEmail != null);
    assert(signUp != null);
    return signUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithEmail(String email, String password),
    TResult signUp(String email, String password),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUp != null) {
      return signUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithEmail(LoginWithEmail value),
    @required TResult signUp(SignUp value),
  }) {
    assert(loginWithEmail != null);
    assert(signUp != null);
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithEmail(LoginWithEmail value),
    TResult signUp(SignUp value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements LoginEvent {
  const factory SignUp(String email, String password) = _$SignUp;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  $SignUpCopyWith<SignUp> get copyWith;
}
