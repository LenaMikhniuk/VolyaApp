import 'package:flutter/material.dart';
import 'package:volyaApp/screens/auth/log_out.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/widgets/fairytales/fairytales_grid.dart';

class FairytaleScreen extends StatelessWidget {
  static const routeName = '/fairytaleScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: LogOut(),
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text(
            'Fairytales',
            style: FontsStyles.baseStyleLight.copyWith(fontSize: 50),
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        shadowColor: AppColors.backgroundColor,
      ),
      body: Container(
        color: AppColors.backgroundColor,
        child: FairytalesGrid(),
      ),
    );
  }
}
