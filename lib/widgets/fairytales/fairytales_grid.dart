import 'package:flutter/material.dart';
import 'package:volyaApp/widgets/fairytales/fairytales_data.dart';
import 'package:volyaApp/widgets/fairytales/fairytales_item.dart';

class FairytalesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: FairytalesData.fairytales.length,
      itemBuilder: (context, index) => FairytalesItem(
        fairytale: FairytalesData.fairytales[index],
      ),
    );
  }
}
