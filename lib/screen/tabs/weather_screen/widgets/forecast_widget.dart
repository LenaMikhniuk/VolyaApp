import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volyaApp/models/forecast_by_city_model.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/util/date_tame_utils.dart';

class ForcastWidget extends StatelessWidget {
  final ForecastByCity forecastThreeDays;
  final String weatherIcon;

  const ForcastWidget({Key key, this.forecastThreeDays, this.weatherIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return forecastThreeDays == null
        ? Container()
        : SingleChildScrollView(
            child: Column(
                children: forecastThreeDays.list
                    .map((e) => Container(
                          decoration: BoxDecoration(
                            color: AppColors.containerWeatherScreenColor
                                .withOpacity(0.5),
                          ),
                          child: Column(
                            children: [
                              Text(
                                DateTimeUtils.getDayFromDateTime(e.dt),
                                style: FontsStyles.forecastThreeDays,
                              ),
                              Text(
                                e?.main?.temp?.toStringAsFixed(0) ??
                                    '' '°C' + '  ${weatherIcon ?? ''}',
                              ),
                            ],
                          ),
                        ))
                    .skip(1)
                    .take(3)
                    .toList()),
          );
  }
}
