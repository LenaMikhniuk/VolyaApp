import 'package:flutter/material.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/widgets/fairytales/fairytales_grid.dart';

class FairytaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Fairytales',
            style: FontsStyles.appBar,
          ),
        ),
        backgroundColor: AppColors.appBarMainColor,
      ),
      body: Container(color: AppColors.bodyMainColor, child: FairytalesGrid()),
    );
  }
}
