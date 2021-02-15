import 'package:flutter/cupertino.dart';
import 'package:volyaApp/models/forecast_by_city_model.dart';
import 'package:volyaApp/util/date_tame_utils.dart';

class ForcastWidget extends StatelessWidget {
  final ForecastByCity forecastThreeDays;

  const ForcastWidget({Key key, this.forecastThreeDays}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: forecastThreeDays == null
              ? Container()
              : forecastThreeDays.list
                  // forecast by city???
                  .map((e) => Column(
                        children: [
                          Text(DateTimeUtils.getDayFromDateTime(e.dt)),
                          Text(
                            e?.main?.temp?.toStringAsFixed(0) ?? '',
                          ),
                        ],
                      ))
                  .skip(1)
                  .take(3)
                  .toList()),
    );
  }
}
