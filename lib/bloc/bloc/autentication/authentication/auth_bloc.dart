import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:volyaApp/bloc/bloc/autentication/authentication/auth_state.dart';
import 'package:volyaApp/bloc/bloc/autentication/authentication/auth_event.dart';
import 'package:volyaApp/data/photo_screen/auth_screen/user_repository.dart';

class AuthenticationBloc extends Bloc<AuthEvent, AuthState> {
  AuthenticationBloc() : super(AuthState.initial());

  UserRepository userRepo = UserRepository();
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) =>
      event.when(
        checkIsAuthenticated: () async* {
          yield AuthState.loading();
          try {
            final isLogin = await userRepo.isSignedIn();
            yield isLogin
                ? AuthState.authenticated()
                : AuthState.unauthenticated();
          } catch (e) {
            yield AuthState.unauthenticated();
            print(e);
          }
        },
      );
}
