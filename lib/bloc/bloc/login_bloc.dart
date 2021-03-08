import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:volyaApp/bloc/bloc/login_state.dart';
import 'package:volyaApp/bloc/bloc/login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) =>
      event.when(login: () async* {
        yield LoginState.loading();
        await Future.delayed(Duration(seconds: 3));
        yield LoginState.success();
      }, goToSignUp: () async* {
        yield LoginState.goToSignUp();
      });
}
