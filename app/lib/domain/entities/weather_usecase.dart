import 'package:weather_module/weather_module.dart';

class WeatherEntity {
  List<Weather>? weather;
  Main? main;
  Sys? sys;
  String? name;

  WeatherEntity({this.weather, this.main, this.sys, this.name});

  factory WeatherEntity.fromOpenWeatherModel(OpenWeatherModel model) =>
      WeatherEntity(
          weather: model.weather,
          main: model.main,
          sys: model.sys,
          name: model.name);
}
