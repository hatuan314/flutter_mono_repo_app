import 'package:app/domain/entities/weather_entity.dart';

abstract class WeatherUseCase {
  Future<WeatherEntity> getCurrentWeather();
}