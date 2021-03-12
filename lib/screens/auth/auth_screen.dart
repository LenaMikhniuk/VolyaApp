import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_bloc.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_event.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_state.dart';
import '../../shared.dart';
import '../home.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String email;
  String password;
  bool isLoginForm = true;

  LoginBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.loginScreenBackgroundColor,
      body: BlocProvider<LoginBloc>(
        create: (context) => _bloc,
        child: BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
          state.maybeWhen(
              orElse: () {
                return;
              },
              success: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  ),
              error: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Login Failure',
                            style: FontsStyles.snackBarMessage,
                          ),
                          Icon(Icons.error)
                        ],
                      ),
                      backgroundColor: Colors.red,
                    ),
                  ));
        }, builder: (context, state) {
          return Center(
            child: Card(
              elevation: 4,
              shadowColor: AppColors.loginButtonColor,
              margin: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          onChanged: (value) {
                            email = value;
                            setState(() {});
                          },
                          style: FontsStyles.hintLogin,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email address',
                            hintStyle: FontsStyles.hintName,
                          ),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            password = value;
                          },
                          style: FontsStyles.hintLogin,
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                          obscureText: true,
                          obscuringCharacter: '*',
                        ),
                        TextButton(
                          onPressed: () {
                            _bloc.add(isLoginForm
                                ? LoginEvent.loginWithEmail(email, password)
                                : LoginEvent.signUp(email, password));
                          },
                          child: Text(
                            isLoginForm ? 'Login' : 'Sign Up',
                            style: FontsStyles.loginButton,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            isLoginForm = !isLoginForm;
                            setState(() {});
                          },
                          child: Text(
                            isLoginForm ? 'Create account' : 'Login',
                            style: FontsStyles.loginButton,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
