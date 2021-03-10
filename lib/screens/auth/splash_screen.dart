import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volyaApp/bloc/bloc/login_bloc.dart';
import 'package:volyaApp/bloc/bloc/login_event.dart';
import 'package:volyaApp/bloc/bloc/login_state.dart';
import 'package:volyaApp/screens/auth/login_screen.dart';

import '../home.dart';
import '../home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocProvider<AuthenticationLoginBloc>(
          create: (context) => AuthenticationLoginBloc(),
          child: BlocConsumer<AuthenticationLoginBloc, LoginState>(
            listener: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return;
                },
                auth: () {
                  return Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                unAuth: () {
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
                child: ElevatedButton(
                  child: Icon(Icons.forward),
                  onPressed: () {
                    BlocProvider.of<AuthenticationLoginBloc>(context).add(
                      LoginEvent.checkIsLogggedIn(),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
