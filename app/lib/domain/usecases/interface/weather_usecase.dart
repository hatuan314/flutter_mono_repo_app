import 'package:app/domain/entities/weather_usecase.dart';

abstract class WeatherUseCase {
  Future<WeatherEntity> getCurrentWeather();
}