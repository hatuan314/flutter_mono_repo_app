library weather_module;

import 'package:geolocator/geolocator.dart';
import 'package:weather_module/domain/usecases/interfaces/weather_usecase.dart';

import 'common/injection/app_injection.dart';

/// A Calculator.
class WeatherModule {
  static void initial() {
    configLocator();
  }
}