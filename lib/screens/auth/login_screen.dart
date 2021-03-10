import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volyaApp/screens/auth/signUp_screen.dart';

import '../../shared.dart';
import '../../shared.dart';
import '../../shared.dart';
import '../../shared.dart';
import '../../shared.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.loginScreenBackgroundColor,
      body: Center(
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
                      style: FontsStyles.hintLogin,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        hintStyle: FontsStyles.hintName,
                      ),
                    ),
                    TextFormField(
                      style: FontsStyles.hintLogin,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: FontsStyles.loginButton,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Create account',
                        style: FontsStyles.signUpButton,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
