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
  CheckIsLogggedIn checkIsLogggedIn() {
    return const CheckIsLogggedIn();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIsLogggedIn(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIsLogggedIn(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkIsLogggedIn(CheckIsLogggedIn value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIsLogggedIn(CheckIsLogggedIn value),
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
abstract class $CheckIsLogggedInCopyWith<$Res> {
  factory $CheckIsLogggedInCopyWith(
          CheckIsLogggedIn value, $Res Function(CheckIsLogggedIn) then) =
      _$CheckIsLogggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckIsLogggedInCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $CheckIsLogggedInCopyWith<$Res> {
  _$CheckIsLogggedInCopyWithImpl(
      CheckIsLogggedIn _value, $Res Function(CheckIsLogggedIn) _then)
      : super(_value, (v) => _then(v as CheckIsLogggedIn));

  @override
  CheckIsLogggedIn get _value => super._value as CheckIsLogggedIn;
}

/// @nodoc
class _$CheckIsLogggedIn implements CheckIsLogggedIn {
  const _$CheckIsLogggedIn();

  @override
  String toString() {
    return 'LoginEvent.checkIsLogggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckIsLogggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIsLogggedIn(),
  }) {
    assert(checkIsLogggedIn != null);
    return checkIsLogggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIsLogggedIn(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLogggedIn != null) {
      return checkIsLogggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkIsLogggedIn(CheckIsLogggedIn value),
  }) {
    assert(checkIsLogggedIn != null);
    return checkIsLogggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIsLogggedIn(CheckIsLogggedIn value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLogggedIn != null) {
      return checkIsLogggedIn(this);
    }
    return orElse();
  }
}

abstract class CheckIsLogggedIn implements LoginEvent {
  const factory CheckIsLogggedIn() = _$CheckIsLogggedIn;
}
