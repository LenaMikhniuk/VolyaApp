import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volyaApp/bloc/bloc/login_bloc.dart';
import 'package:volyaApp/bloc/bloc/login_event.dart';
import 'package:volyaApp/bloc/bloc/login_state.dart';

import '../home.dart';
import '../home.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  //FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
          child: BlocConsumer<LoginBloc, LoginState>(
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
                      builder: (context) => Home(),
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
                    BlocProvider.of<LoginBloc>(context).add(
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
