import 'package:app/common/constants/image_constants.dart';
import 'package:app/common/utils/datetime_utils.dart';
import 'package:weather_module/weather_module.dart';

class WeatherEntity {
  List<Weather>? weather;
  Main? main;
  Sys? sys;
  String? name;

  WeatherEntity({this.weather, this.main, this.sys, this.name});

  factory WeatherEntity.fromOpenWeatherModel(OpenWeatherModel model) {
    return WeatherEntity(
        weather: model.weather,
        main: model.main,
        sys: model.sys,
        name: model.name);
  }
}

class WeatherIconMapping {
  static String toWeatherIcon(Weather? weather) {
    switch(weather?.main) {
      case 'Thunderstorm':
        if (DateTimeUtils.dayOrNight() == TimeStyle.NIGHT) {
          return ImageConstants.icNightStorm;
        }
        return ImageConstants.icDayStorm;
      case 'Clear':
        if (DateTimeUtils.dayOrNight() == TimeStyle.NIGHT) {
          return ImageConstants.icNightMoon;
        }
        return ImageConstants.icDaySun;
      case 'Clouds':
        if (DateTimeUtils.dayOrNight() == TimeStyle.NIGHT) {
          return ImageConstants.icNightClouds;
        }
        return ImageConstants.icDayClouds;
      default:
        return weather!.getIconUrl();
    }
  }
}