import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volyaApp/bloc/bloc/autentication/authentication/auth_bloc.dart';
import 'package:volyaApp/bloc/bloc/autentication/authentication/auth_event.dart';
import 'package:volyaApp/bloc/bloc/autentication/authentication/auth_state.dart';
import 'package:volyaApp/util/error_utils.dart';

import '../../shared.dart';
import '../home.dart';
import 'auth_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AuthenticationBloc _authenticationBloc;
  String message;

  @override
  void initState() {
    super.initState();
    _authenticationBloc = AuthenticationBloc();
    _authenticationBloc.add(AuthEvent.checkIsAuthenticated());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocProvider<AuthenticationBloc>(
          create: (context) => _authenticationBloc,
          child: BlocConsumer<AuthenticationBloc, AuthState>(
            listener: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return;
                },
                authenticated: () {
                  return Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                unauthenticated: () {
                  return Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => AuthScreen(),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
