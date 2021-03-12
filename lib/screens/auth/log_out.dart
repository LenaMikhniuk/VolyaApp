import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_bloc.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_event.dart';
import 'package:volyaApp/bloc/bloc/autentication/login/bloc/login_state.dart';
import 'package:volyaApp/screens/auth/auth_screen.dart';
import 'package:volyaApp/shared.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {
                return;
              },
              logOut: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => AuthScreen(),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: AppColors.appBarMainColor,
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    size: 25,
                    color: AppColors.logOutButtonColor,
                  ),
                  title: Text(
                    'Log Out',
                    style: FontsStyles.logOutButton,
                  ),
                  onTap: () {
                    BlocProvider.of<LoginBloc>(context).add(
                      LoginEvent.logOut(),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
