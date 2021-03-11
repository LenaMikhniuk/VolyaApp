// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  CheckIsAuthenticated checkIsAuthenticated() {
    return const CheckIsAuthenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIsAuthenticated(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIsAuthenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkIsAuthenticated(CheckIsAuthenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIsAuthenticated(CheckIsAuthenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $CheckIsAuthenticatedCopyWith<$Res> {
  factory $CheckIsAuthenticatedCopyWith(CheckIsAuthenticated value,
          $Res Function(CheckIsAuthenticated) then) =
      _$CheckIsAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckIsAuthenticatedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $CheckIsAuthenticatedCopyWith<$Res> {
  _$CheckIsAuthenticatedCopyWithImpl(
      CheckIsAuthenticated _value, $Res Function(CheckIsAuthenticated) _then)
      : super(_value, (v) => _then(v as CheckIsAuthenticated));

  @override
  CheckIsAuthenticated get _value => super._value as CheckIsAuthenticated;
}

/// @nodoc
class _$CheckIsAuthenticated implements CheckIsAuthenticated {
  const _$CheckIsAuthenticated();

  @override
  String toString() {
    return 'AuthEvent.checkIsAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckIsAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult checkIsAuthenticated(),
  }) {
    assert(checkIsAuthenticated != null);
    return checkIsAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult checkIsAuthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIsAuthenticated != null) {
      return checkIsAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult checkIsAuthenticated(CheckIsAuthenticated value),
  }) {
    assert(checkIsAuthenticated != null);
    return checkIsAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult checkIsAuthenticated(CheckIsAuthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkIsAuthenticated != null) {
      return checkIsAuthenticated(this);
    }
    return orElse();
  }
}

abstract class CheckIsAuthenticated implements AuthEvent {
  const factory CheckIsAuthenticated() = _$CheckIsAuthenticated;
}
