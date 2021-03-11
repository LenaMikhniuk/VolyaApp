import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:volyaApp/bloc/bloc/autentication/authentication/auth_event.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_event.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_state.dart';
import 'package:volyaApp/data/photo_screen/auth_screen/user_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial());
  UserRepository _userRepository = UserRepository();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) =>
      event.when(loginWithEmail: (
        String email,
        String password,
      ) async* {
        yield LoginState.loading();
        try {
          await _userRepository.signInWithCredentials(email, password);

          yield LoginState.success();
        } catch (e) {
          yield LoginState.error();
          print('Error from catch $e');
        }
      }, signUp: (
        String email,
        String password,
      ) async* {
        yield LoginState.loading();
        try {
          await _userRepository.signUp(email: email, password: password);

          yield LoginState.success();
        } catch (e) {
          yield LoginState.error();
          print('Error from catch $e');
        }
      });
}
