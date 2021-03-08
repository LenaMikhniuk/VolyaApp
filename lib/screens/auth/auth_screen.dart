import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volyaApp/bloc/bloc/login_bloc.dart';
import 'package:volyaApp/bloc/bloc/login_event.dart';
import 'package:volyaApp/bloc/bloc/login_state.dart';

import '../home.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(),
              child: Center(
                  child: Row(
                children: [
                  Builder(
                    builder: (BuildContext context) => ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context)
                              .add(LoginEvent.goToSignUp());
                        },
                        child: Text('sign up')),
                  ),
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return;
                      }, success: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Home()));
                        return;
                      });
                    },
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<LoginBloc>(context)
                                  .add(LoginEvent.login());
                            },
                            child: Text('Login'));
                      }, loading: () {
                        return ElevatedButton(
                            onPressed: null, child: Text('Login'));
                      });
                    },
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
