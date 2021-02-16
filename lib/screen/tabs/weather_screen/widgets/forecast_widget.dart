import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volyaApp/models/forecast_by_city_model.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/util/date_tame_utils.dart';
import 'package:volyaApp/util/weather_utils.dart';

class ForcastWidget extends StatelessWidget {
  final ForecastByCity forecastThreeDays;
  final String iconName;

  const ForcastWidget({Key key, this.forecastThreeDays, this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return forecastThreeDays == null
        ? Container()
        : SingleChildScrollView(
            child: Column(
                children: forecastThreeDays.list
                    .map((e) => Container(
                          width: 50,
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            border: buildBorder(),
                            color: AppColors.containerWeatherScreenColor
                                .withOpacity(0.4),
                          ),
                          child: Column(
                            children: [
                              Text(
                                DateTimeUtils.getDayFromDateTime(e.dt),
                                style: FontsStyles.forecastThreeDays,
                              ),
                              Text(
                                '${(e?.main?.temp ?? 0) > 0 ? '+' : ''}'
                                ' ${e?.main?.temp?.toStringAsFixed(0) ?? ''}°C',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(WeatherUtils.getWeatherIcon(
                                      e?.weather?.first?.id) ??
                                  ''),
                            ],
                          ),
                        ))
                    .skip(1)
                    .take(3)
                    .toList()),
          );
  }

  Border buildBorder() {
    return Border(
      top: BorderSide(
        color: AppColors.borderSideForecastThreeDaysColor,
      ),
      left: BorderSide(
        color: AppColors.borderSideForecastThreeDaysColor,
      ),
      right: BorderSide(
        color: AppColors.borderSideForecastThreeDaysColor,
      ),
      bottom: BorderSide(
        color: AppColors.borderSideForecastThreeDaysColor,
      ),
    );
  }
}
