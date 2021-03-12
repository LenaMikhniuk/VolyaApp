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
        title: Center(
          child: Text(
            'Fairytales',
            style: FontsStyles.appBar,
          ),
        ),
        backgroundColor: AppColors.appBarMainColor,
        shadowColor: AppColors.appBarShadowColor,
      ),
      body: Container(color: AppColors.bodyMainColor, child: FairytalesGrid()),
    );
  }
}
