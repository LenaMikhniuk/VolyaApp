import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:volyaApp/bloc/bloc/autentication/authentication/auth_event.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_event.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_state.dart';
import 'package:volyaApp/data/photo_screen/auth_screen/user_repository.dart';
import 'package:volyaApp/util/error_utils.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial());
  UserRepository _userRepository = UserRepository();
  String message;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) =>
      event.when(
        loginWithEmail: (
          String email,
          String password,
        ) async* {
          yield LoginState.loading();
          try {
            await _userRepository.signInWithCredentials(email, password);

            yield LoginState.success();
          } on FirebaseAuthException catch (e) {
            final errorMessageHuman = ErrorUtils.getErrorMessage(e.message);
            yield LoginState.error(errorMessageHuman);
            print('Error from catch $e');
            print(errorMessageHuman);
          } catch (e) {
            final errorMessageHuman = ErrorUtils.getErrorMessage(e.toString());
            yield LoginState.error(errorMessageHuman);
            print(errorMessageHuman);
            print('Error from catch $e');
          }
        },
        signUp: (
          String email,
          String password,
        ) async* {
          yield LoginState.loading();
          try {
            await _userRepository.signUp(email: email, password: password);

            yield LoginState.success();
          } on FirebaseAuthException catch (e) {
            final errorMessageHuman = ErrorUtils.getErrorMessage(e.toString());
            yield LoginState.error(errorMessageHuman);
            print('Error from catch $e');
            print(errorMessageHuman);
          } catch (e) {
            final errorMessageHuman = ErrorUtils.getErrorMessage(e.toString());
            yield LoginState.error(errorMessageHuman);
            print('Error from catch $e');
            print(errorMessageHuman);
          }
        },
        logOut: () async* {
          yield LoginState.loading();
          try {
            await _userRepository.logOut();
            yield LoginState.logOut();
          } on FirebaseAuthException catch (e) {
            final errorMessageHuman = ErrorUtils.getErrorMessage(e.toString());
            yield LoginState.error(errorMessageHuman);
            print('Error from catch $e');
          } catch (e) {
            final errorMessageHuman = ErrorUtils.getErrorMessage(e.toString());
            yield LoginState.error(errorMessageHuman);
          }
        },
      );
}
