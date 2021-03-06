import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:volyaApp/models/weather_models/forecast_by_city_model.dart';
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
                          width: 60,
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            border: buildBorder(),
                            color: AppColors.secondaryColor.withOpacity(0.4),
                          ),
                          child: Column(
                            children: [
                              AutoSizeText(
                                DateTimeUtils.getDayFromDateTime(e.dt),
                                style: FontsStyles.baseStyleLight,
                                maxLines: 1,
                                minFontSize: 9,
                              ),
                              AutoSizeText(
                                WeatherUtils.getTempHumanFromNum(e.main.temp),
                                style: FontsStyles.baseStyleLight,
                                maxLines: 1,
                                minFontSize: 10,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                WeatherUtils.getWeatherIcon(
                                        e?.weather?.first?.id) ??
                                    '',
                                style: TextStyle(fontSize: 30),
                              ),
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
        color: AppColors.textColorDark,
      ),
      left: BorderSide(
        color: AppColors.textColorDark,
      ),
      right: BorderSide(
        color: AppColors.textColorDark,
      ),
      bottom: BorderSide(
        color: AppColors.textColorDark,
      ),
    );
  }
}
