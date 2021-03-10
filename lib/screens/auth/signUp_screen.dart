import 'package:flutter/material.dart';

import '../../shared.dart';
import '../../shared.dart';
import '../../shared.dart';
import '../../shared.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.signUpScreenBackgroundColor,
      body: Center(
        child: Card(
          elevation: 4,
          shadowColor: AppColors.signUpButtonColor,
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      style: FontsStyles.hintName,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email address',
                      ),
                    ),
                    TextFormField(
                      style: FontsStyles.hintName,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: FontsStyles.signUpButton,
                      ),
                    ),
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
