import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:volyaApp/bloc/bloc/login_state.dart';
import 'package:volyaApp/bloc/bloc/login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  LoginBloc() : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) =>
      event.when(
        checkIsLogggedIn: () async* {
          yield LoginState.loading();

          final currentUser = _firebaseAuth.currentUser;

          if (currentUser != null) {
            yield LoginState.auth();
          } else {
            yield LoginState.unAuth();
          }
        },
      );
}
