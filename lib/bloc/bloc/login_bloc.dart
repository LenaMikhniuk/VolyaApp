import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:volyaApp/bloc/bloc/login_state.dart';
import 'package:volyaApp/bloc/bloc/login_event.dart';
import 'package:volyaApp/data/photo_screen/auth_screen/user_repository.dart';

class AuthenticationLoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthenticationLoginBloc() : super(LoginState.initial());

  UserRepository _userRepository = UserRepository();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) =>
      event.when(
        checkIsLogggedIn: () async* {
          yield LoginState.loading();

          if (_userRepository.isSignedIn()) {
            yield LoginState.auth();
            print('auth');
          } else {
            yield LoginState.unAuth();
            print('unauth');
          }
        },
      );
}
